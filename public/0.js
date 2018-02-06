webpackJsonp([0],{

/***/ 208:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
function injectStyle (ssrContext) {
  if (disposed) return
  __webpack_require__(214)
}
var normalizeComponent = __webpack_require__(78)
/* script */
var __vue_script__ = __webpack_require__(216)
/* template */
var __vue_template__ = __webpack_require__(217)
/* template functional */
var __vue_template_functional__ = false
/* styles */
var __vue_styles__ = injectStyle
/* scopeId */
var __vue_scopeId__ = "data-v-e24368cc"
/* moduleIdentifier (server only) */
var __vue_module_identifier__ = null
var Component = normalizeComponent(
  __vue_script__,
  __vue_template__,
  __vue_template_functional__,
  __vue_styles__,
  __vue_scopeId__,
  __vue_module_identifier__
)
Component.options.__file = "resources\\assets\\js\\components\\Register.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-loader/node_modules/vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-e24368cc", Component.options)
  } else {
    hotAPI.reload("data-v-e24368cc", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 214:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(215);
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add the styles to the DOM
var update = __webpack_require__(77)("7b5bf4dd", content, false, {});
// Hot Module Replacement
if(false) {
 // When the styles change, update the <style> tags
 if(!content.locals) {
   module.hot.accept("!!../../../../node_modules/_css-loader@0.28.9@css-loader/index.js!../../../../node_modules/_vue-loader@13.7.1@vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-e24368cc\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../node_modules/_sass-loader@6.0.6@sass-loader/lib/loader.js!../../../../node_modules/_vue-loader@13.7.1@vue-loader/lib/selector.js?type=styles&index=0!./Register.vue", function() {
     var newContent = require("!!../../../../node_modules/_css-loader@0.28.9@css-loader/index.js!../../../../node_modules/_vue-loader@13.7.1@vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-e24368cc\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../node_modules/_sass-loader@6.0.6@sass-loader/lib/loader.js!../../../../node_modules/_vue-loader@13.7.1@vue-loader/lib/selector.js?type=styles&index=0!./Register.vue");
     if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
     update(newContent);
   });
 }
 // When the module is disposed, remove the <style> tags
 module.hot.dispose(function() { update(); });
}

/***/ }),

/***/ 215:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(14)(false);
// imports


// module
exports.push([module.i, "\n.login-container[data-v-e24368cc] {\n  /*box-shadow: 0 0px 8px 0 rgba(0, 0, 0, 0.06), 0 1px 0px 0 rgba(0, 0, 0, 0.02);*/\n  border-radius: 5px;\n  -moz-border-radius: 5px;\n  background-clip: padding-box;\n  margin: 180px auto;\n  width: 350px;\n  padding: 35px 35px 15px 35px;\n  background: #fff;\n  border: 1px solid #eaeaea;\n  -webkit-box-shadow: 0 0 25px #cac6c6;\n          box-shadow: 0 0 25px #cac6c6;\n}\n.login-container .title[data-v-e24368cc] {\n    margin: 0px auto 40px auto;\n    text-align: center;\n    color: #505458;\n}\n.login-container .remember[data-v-e24368cc] {\n    margin: 0px 0px 35px 0px;\n}\n", ""]);

// exports


/***/ }),

/***/ 216:
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//
//

//import NProgress from 'nprogress'
/* harmony default export */ __webpack_exports__["default"] = ({
  data: function data() {
    return {
      registering: false,
      show: true,
      count: '',
      timer: null,
      ruleForm2: {
        name: '',
        account: '',
        password: '',
        checkPass: '',
        code: ''
      },
      rules2: {
        name: [{ required: true, message: '请输入用户名', trigger: 'blur' }],
        account: [{ required: true, message: '请输入账号', trigger: 'blur' }],
        checkPass: [{ required: true, message: '请输入密码', trigger: 'blur' }],
        checkCode: [{ required: true, message: '请输入验证码', trigger: 'blur' }]
      },
      checked: true
    };
  },

  methods: {
    handleSubmit: function handleSubmit(event) {
      var _this = this;

      var reg = 11 && /^((13|14|15|17|18)[0-9]{1}\d{8})$/;
      console.log(this.ruleForm2.account);
      if (this.ruleForm2.account == '' || !reg.test(this.ruleForm2.account)) {
        this.$message({
          message: '请输入正确的手机号！',
          type: 'error'
        });
        return;
      } else {
        this.$message({
          message: '已发送到你的手机上，请注意查收！',
          type: 'success'
        });
        var TIME_COUNT = 60;
        if (!this.timer) {
          this.count = TIME_COUNT;
          this.show = false;
          this.timer = setInterval(function () {
            if (_this.count > 0 && _this.count <= TIME_COUNT) {
              _this.count--;
              console.log(_this.count);
            } else {
              _this.show = true;
              clearInterval(_this.timer);
              _this.timer = null;
            }
          }, 1000);
        }
        var data = { 'account': this.ruleForm2.account };
        this.$api.post('api/auth/verify_code', data, function (r) {});
      }
    },
    handleSubmit2: function handleSubmit2(event) {
      var reg = 11 && /^((13|14|15|17|18)[0-9]{1}\d{8})$/;
      if (this.ruleForm2.account == '' || !reg.test(this.ruleForm2.account)) {
        this.$message({
          message: '请输入正确的手机号！',
          type: 'error'
        });
        return;
      } else {
        if (this.ruleForm2.code == '' || this.ruleForm2.code.length < 6) {
          this.$message({
            message: '请输入正确的验证码！',
            type: 'error'
          });
          return;
        }
        if (this.ruleForm2.password !== this.ruleForm2.checkPass) {
          this.$message({
            message: '两次输入的密码不同，请重新确认',
            type: 'error'
          });
          return;
        }
        var data = { 'name': this.ruleForm2.name, 'phone': this.ruleForm2.account, 'grant_type': 'password', 'password': this.ruleForm2.password, 'confirm_password': this.ruleForm2.checkPass, 'code': this.ruleForm2.code };
        console.log(data);
        this.$api.post('api/register', data, function (r) {
          console.log(r);
        });
      }
    }
  }
});

/***/ }),

/***/ 217:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "el-form",
    {
      ref: "ruleForm2",
      staticClass: "demo-ruleForm login-container",
      attrs: {
        model: _vm.ruleForm2,
        rules: _vm.rules2,
        "label-position": "left",
        "label-width": "0px"
      }
    },
    [
      _c("h3", { staticClass: "title" }, [_vm._v("注册")]),
      _vm._v(" "),
      _c(
        "el-form-item",
        { attrs: { prop: "name" } },
        [
          _c("el-input", {
            attrs: {
              type: "text",
              "auto-complete": "off",
              placeholder: "用户名"
            },
            model: {
              value: _vm.ruleForm2.name,
              callback: function($$v) {
                _vm.$set(_vm.ruleForm2, "name", $$v)
              },
              expression: "ruleForm2.name"
            }
          })
        ],
        1
      ),
      _vm._v(" "),
      _c(
        "el-form-item",
        { attrs: { prop: "account" } },
        [
          _c("el-input", {
            attrs: {
              type: "text",
              "auto-complete": "off",
              placeholder: "手机号"
            },
            model: {
              value: _vm.ruleForm2.account,
              callback: function($$v) {
                _vm.$set(_vm.ruleForm2, "account", $$v)
              },
              expression: "ruleForm2.account"
            }
          })
        ],
        1
      ),
      _vm._v(" "),
      _c(
        "el-form-item",
        { attrs: { prop: "checkPass" } },
        [
          _c("el-input", {
            attrs: {
              type: "password",
              "auto-complete": "off",
              placeholder: "密码"
            },
            model: {
              value: _vm.ruleForm2.password,
              callback: function($$v) {
                _vm.$set(_vm.ruleForm2, "password", $$v)
              },
              expression: "ruleForm2.password"
            }
          })
        ],
        1
      ),
      _vm._v(" "),
      _c(
        "el-form-item",
        { attrs: { prop: "checkPass" } },
        [
          _c("el-input", {
            attrs: {
              type: "password",
              "auto-complete": "off",
              placeholder: "确认密码"
            },
            model: {
              value: _vm.ruleForm2.checkPass,
              callback: function($$v) {
                _vm.$set(_vm.ruleForm2, "checkPass", $$v)
              },
              expression: "ruleForm2.checkPass"
            }
          })
        ],
        1
      ),
      _vm._v(" "),
      _c(
        "el-form-item",
        { attrs: { prop: "checkCode" } },
        [
          _c("el-input", {
            staticStyle: { width: "50%", float: "left" },
            attrs: {
              type: "type",
              "auto-complete": "off",
              placeholder: "验证码"
            },
            model: {
              value: _vm.ruleForm2.code,
              callback: function($$v) {
                _vm.$set(_vm.ruleForm2, "code", $$v)
              },
              expression: "ruleForm2.code"
            }
          }),
          _vm._v(" "),
          _c(
            "el-button",
            {
              directives: [
                {
                  name: "show",
                  rawName: "v-show",
                  value: _vm.show,
                  expression: "show"
                }
              ],
              staticStyle: { float: "right" },
              attrs: { type: "primary" },
              nativeOn: {
                click: function($event) {
                  $event.preventDefault()
                  _vm.handleSubmit($event)
                }
              }
            },
            [_vm._v("获取验证")]
          ),
          _vm._v(" "),
          _c(
            "el-button",
            {
              directives: [
                {
                  name: "show",
                  rawName: "v-show",
                  value: !_vm.show,
                  expression: "!show"
                }
              ],
              staticStyle: { float: "right" },
              attrs: { type: "primary", loading: !_vm.show }
            },
            [_vm._v(_vm._s(_vm.count) + "s")]
          )
        ],
        1
      ),
      _vm._v(" "),
      _c(
        "el-form-item",
        { staticStyle: { width: "100%" } },
        [
          _c(
            "el-button",
            {
              staticStyle: { width: "100%" },
              attrs: { type: "primary", loading: _vm.registering },
              nativeOn: {
                click: function($event) {
                  $event.preventDefault()
                  _vm.handleSubmit2($event)
                }
              }
            },
            [_vm._v("注册")]
          )
        ],
        1
      )
    ],
    1
  )
}
var staticRenderFns = []
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-loader/node_modules/vue-hot-reload-api")      .rerender("data-v-e24368cc", module.exports)
  }
}

/***/ })

});