/*
* @Author: wuyongjie
* @Date:   2018-01-07 21:54:05
* @Last Modified by:   thinkpad
* @Last Modified time: 2018-02-06 15:41:10
*/
import axios from 'axios';
import NProgress from 'nprogress'
/*let auth_token = localStorage.getItem('auth_token') ? localStorage.getItem('auth_token') : "";

axios.defaults.baseURL = 'localhost:8000';
axios.defaults.headers.common['Authorization'] = auth_token;

const request = axios;

export default {
  request
}*/

// 配置API接口地址
var root = 'http://127.0.0.1:8000/api/'

function toType (obj) {
  return ({}).toString.call(obj).match(/\s([a-zA-Z]+)/)[1].toLowerCase()
}
// 参数过滤函数
function filterNull (o) {
  for (var key in o) {
    if (o[key] === null) {
      delete o[key]
    }
    if (toType(o[key]) === 'string') {
      o[key] = o[key].trim()
    } else if (toType(o[key]) === 'object') {
      o[key] = filterNull(o[key])
    } else if (toType(o[key]) === 'array') {
      o[key] = filterNull(o[key])
    }
  }
  return o
}

function apiAxios (method, url, params, success,failure) {
  NProgress.start()
  if (params) {
    params = filterNull(params)
  }
  var access_token = '';
  if (sessionStorage.access_token) {
    access_token = sessionStorage.access_token;
  }
  //axios.defaults.headers.common['Authorization']
  axios({
    method: method,
    url: url,
    data: method === 'POST' || method === 'PUT' ? params : null,
    params: method === 'GET' || method === 'DELETE' ? params : null,
    baseURL: root,
    headers: {"Content-Type": "application/json", "Authorization": "Bearer "+access_token},
    withCredentials: false
  })
  .then(function (res) {
    console.log(res);
    NProgress.done()
    if (res.status === 200) {
      if (success) {
        success(res.data)
      }
    } else {
      if (failure) {
        failure(res.data)
      } else {
        window.alert('error: ' + JSON.stringify(res.data))
      }
    }
  })
  .catch(function (err) {
    let res = err.response
    if (err) {
       window.alert('api error, HTTP CODE: ' + err)
    }
  })
}

// 返回在vue模板中的调用接口
export default {
  get: function (url, params, success, failure) {
    return apiAxios('GET', url, params, success, failure)
  },
  post: function (url, params, success, failure) {
    return apiAxios('POST', url, params, success, failure)
  },
  put: function (url, params, success, failure) {
    return apiAxios('PUT', url, params, success, failure)
  },
  delete: function (url, params, success, failure) {
    return apiAxios('DELETE', url, params, success, failure)
  }
}