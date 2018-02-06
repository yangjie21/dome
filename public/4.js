webpackJsonp([4],{

/***/ 212:
/***/ (function(module, exports, __webpack_require__) {

var disposed = false
function injectStyle (ssrContext) {
  if (disposed) return
  __webpack_require__(241)
}
var normalizeComponent = __webpack_require__(77)
/* script */
var __vue_script__ = __webpack_require__(243)
/* template */
var __vue_template__ = __webpack_require__(244)
/* template functional */
var __vue_template_functional__ = false
/* styles */
var __vue_styles__ = injectStyle
/* scopeId */
var __vue_scopeId__ = "data-v-c6034e46"
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
Component.options.__file = "resources/assets/js/admin/User.vue"

/* hot reload */
if (false) {(function () {
  var hotAPI = require("vue-loader/node_modules/vue-hot-reload-api")
  hotAPI.install(require("vue"), false)
  if (!hotAPI.compatible) return
  module.hot.accept()
  if (!module.hot.data) {
    hotAPI.createRecord("data-v-c6034e46", Component.options)
  } else {
    hotAPI.reload("data-v-c6034e46", Component.options)
  }
  module.hot.dispose(function (data) {
    disposed = true
  })
})()}

module.exports = Component.exports


/***/ }),

/***/ 241:
/***/ (function(module, exports, __webpack_require__) {

// style-loader: Adds some css to the DOM by adding a <style> tag

// load the styles
var content = __webpack_require__(242);
if(typeof content === 'string') content = [[module.i, content, '']];
if(content.locals) module.exports = content.locals;
// add the styles to the DOM
var update = __webpack_require__(78)("9516a2f2", content, false);
// Hot Module Replacement
if(false) {
 // When the styles change, update the <style> tags
 if(!content.locals) {
   module.hot.accept("!!../../../../node_modules/_css-loader@0.28.8@css-loader/index.js!../../../../node_modules/_vue-loader@13.7.0@vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-c6034e46\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../node_modules/_vue-loader@13.7.0@vue-loader/lib/selector.js?type=styles&index=0!./User.vue", function() {
     var newContent = require("!!../../../../node_modules/_css-loader@0.28.8@css-loader/index.js!../../../../node_modules/_vue-loader@13.7.0@vue-loader/lib/style-compiler/index.js?{\"vue\":true,\"id\":\"data-v-c6034e46\",\"scoped\":true,\"hasInlineConfig\":true}!../../../../node_modules/_vue-loader@13.7.0@vue-loader/lib/selector.js?type=styles&index=0!./User.vue");
     if(typeof newContent === 'string') newContent = [[module.id, newContent, '']];
     update(newContent);
   });
 }
 // When the module is disposed, remove the <style> tags
 module.hot.dispose(function() { update(); });
}

/***/ }),

/***/ 242:
/***/ (function(module, exports, __webpack_require__) {

exports = module.exports = __webpack_require__(16)(false);
// imports


// module
exports.push([module.i, "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n", ""]);

// exports


/***/ }),

/***/ 243:
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
//
//
//
//
//
//

//import { getUserList } from '../../api/api';
//import NProgress from 'nprogress'
/* harmony default export */ __webpack_exports__["default"] = ({
	data: function data() {
		return {
			filters: {
				name: ''
			},
			loading: false,
			users: []
		};
	},

	methods: {
		//性别显示转换
		formatSex: function formatSex(row, column) {
			return row.sex == 1 ? '男' : row.sex == 0 ? '女' : '未知';
		},
		//获取用户列表
		getUser: function getUser() {
			var _this = this;

			var para = {
				name: this.filters.name
			};
			this.loading = true;
			//NProgress.start();
			getUserList(para).then(function (res) {
				_this.users = res.data.users;
				_this.loading = false;
				//NProgress.done();
			});
		}
	},
	mounted: function mounted() {
		this.getUser();
	}
});

/***/ }),

/***/ 244:
/***/ (function(module, exports, __webpack_require__) {

var render = function() {
  var _vm = this
  var _h = _vm.$createElement
  var _c = _vm._self._c || _h
  return _c(
    "section",
    [
      _c(
        "el-col",
        {
          staticClass: "toolbar",
          staticStyle: { "padding-bottom": "0px" },
          attrs: { span: 24 }
        },
        [
          _c(
            "el-form",
            { attrs: { inline: true, model: _vm.filters } },
            [
              _c(
                "el-form-item",
                [
                  _c("el-input", {
                    attrs: { placeholder: "姓名" },
                    model: {
                      value: _vm.filters.name,
                      callback: function($$v) {
                        _vm.$set(_vm.filters, "name", $$v)
                      },
                      expression: "filters.name"
                    }
                  })
                ],
                1
              ),
              _vm._v(" "),
              _c(
                "el-form-item",
                [
                  _c(
                    "el-button",
                    { attrs: { type: "primary" }, on: { click: _vm.getUser } },
                    [_vm._v("查询")]
                  )
                ],
                1
              )
            ],
            1
          )
        ],
        1
      ),
      _vm._v(" "),
      [
        _c(
          "el-table",
          {
            directives: [
              {
                name: "loading",
                rawName: "v-loading",
                value: _vm.loading,
                expression: "loading"
              }
            ],
            staticStyle: { width: "100%" },
            attrs: { data: _vm.users, "highlight-current-row": "" }
          },
          [
            _c("el-table-column", { attrs: { type: "index", width: "60" } }),
            _vm._v(" "),
            _c("el-table-column", {
              attrs: { prop: "name", label: "姓名", width: "120", sortable: "" }
            }),
            _vm._v(" "),
            _c("el-table-column", {
              attrs: {
                prop: "sex",
                label: "性别",
                width: "100",
                formatter: _vm.formatSex,
                sortable: ""
              }
            }),
            _vm._v(" "),
            _c("el-table-column", {
              attrs: { prop: "age", label: "年龄", width: "100", sortable: "" }
            }),
            _vm._v(" "),
            _c("el-table-column", {
              attrs: {
                prop: "birth",
                label: "生日",
                width: "120",
                sortable: ""
              }
            }),
            _vm._v(" "),
            _c("el-table-column", {
              attrs: {
                prop: "addr",
                label: "地址",
                "min-width": "180",
                sortable: ""
              }
            })
          ],
          1
        )
      ]
    ],
    2
  )
}
var staticRenderFns = []
render._withStripped = true
module.exports = { render: render, staticRenderFns: staticRenderFns }
if (false) {
  module.hot.accept()
  if (module.hot.data) {
    require("vue-loader/node_modules/vue-hot-reload-api")      .rerender("data-v-c6034e46", module.exports)
  }
}

/***/ })

});