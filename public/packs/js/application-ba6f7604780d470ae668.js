/******/ (function(modules) { // webpackBootstrap
/******/ 	// The module cache
/******/ 	var installedModules = {};
/******/
/******/ 	// The require function
/******/ 	function __webpack_require__(moduleId) {
/******/
/******/ 		// Check if module is in cache
/******/ 		if(installedModules[moduleId]) {
/******/ 			return installedModules[moduleId].exports;
/******/ 		}
/******/ 		// Create a new module (and put it into the cache)
/******/ 		var module = installedModules[moduleId] = {
/******/ 			i: moduleId,
/******/ 			l: false,
/******/ 			exports: {}
/******/ 		};
/******/
/******/ 		// Execute the module function
/******/ 		modules[moduleId].call(module.exports, module, module.exports, __webpack_require__);
/******/
/******/ 		// Flag the module as loaded
/******/ 		module.l = true;
/******/
/******/ 		// Return the exports of the module
/******/ 		return module.exports;
/******/ 	}
/******/
/******/
/******/ 	// expose the modules object (__webpack_modules__)
/******/ 	__webpack_require__.m = modules;
/******/
/******/ 	// expose the module cache
/******/ 	__webpack_require__.c = installedModules;
/******/
/******/ 	// define getter function for harmony exports
/******/ 	__webpack_require__.d = function(exports, name, getter) {
/******/ 		if(!__webpack_require__.o(exports, name)) {
/******/ 			Object.defineProperty(exports, name, { enumerable: true, get: getter });
/******/ 		}
/******/ 	};
/******/
/******/ 	// define __esModule on exports
/******/ 	__webpack_require__.r = function(exports) {
/******/ 		if(typeof Symbol !== 'undefined' && Symbol.toStringTag) {
/******/ 			Object.defineProperty(exports, Symbol.toStringTag, { value: 'Module' });
/******/ 		}
/******/ 		Object.defineProperty(exports, '__esModule', { value: true });
/******/ 	};
/******/
/******/ 	// create a fake namespace object
/******/ 	// mode & 1: value is a module id, require it
/******/ 	// mode & 2: merge all properties of value into the ns
/******/ 	// mode & 4: return value when already ns object
/******/ 	// mode & 8|1: behave like require
/******/ 	__webpack_require__.t = function(value, mode) {
/******/ 		if(mode & 1) value = __webpack_require__(value);
/******/ 		if(mode & 8) return value;
/******/ 		if((mode & 4) && typeof value === 'object' && value && value.__esModule) return value;
/******/ 		var ns = Object.create(null);
/******/ 		__webpack_require__.r(ns);
/******/ 		Object.defineProperty(ns, 'default', { enumerable: true, value: value });
/******/ 		if(mode & 2 && typeof value != 'string') for(var key in value) __webpack_require__.d(ns, key, function(key) { return value[key]; }.bind(null, key));
/******/ 		return ns;
/******/ 	};
/******/
/******/ 	// getDefaultExport function for compatibility with non-harmony modules
/******/ 	__webpack_require__.n = function(module) {
/******/ 		var getter = module && module.__esModule ?
/******/ 			function getDefault() { return module['default']; } :
/******/ 			function getModuleExports() { return module; };
/******/ 		__webpack_require__.d(getter, 'a', getter);
/******/ 		return getter;
/******/ 	};
/******/
/******/ 	// Object.prototype.hasOwnProperty.call
/******/ 	__webpack_require__.o = function(object, property) { return Object.prototype.hasOwnProperty.call(object, property); };
/******/
/******/ 	// __webpack_public_path__
/******/ 	__webpack_require__.p = "/packs/";
/******/
/******/
/******/ 	// Load entry module and return exports
/******/ 	return __webpack_require__(__webpack_require__.s = "./app/javascript/packs/application.js");
/******/ })
/************************************************************************/
/******/ ({

/***/ "./app/javascript/packs/application.js":
/*!*********************************************!*\
  !*** ./app/javascript/packs/application.js ***!
  \*********************************************/
/*! no static exports found */
/***/ (function(module, exports) {

throw new Error("Module build failed (from ./node_modules/babel-loader/lib/index.js):\n/home/inga/Documents/GitHub/gifts_shop/TestGuru/babel.config.js:19\n  \"plugins\": [\"@babel/plugin-proposal-private-property-in-object\"]\n           ^\n\nSyntaxError: Unexpected token ':'\n    at new Script (vm.js:102:7)\n    at NativeCompileCache._moduleCompile (/home/inga/Documents/GitHub/gifts_shop/TestGuru/node_modules/v8-compile-cache/v8-compile-cache.js:240:18)\n    at Module._compile (/home/inga/Documents/GitHub/gifts_shop/TestGuru/node_modules/v8-compile-cache/v8-compile-cache.js:184:36)\n    at Object.Module._extensions..js (internal/modules/cjs/loader.js:1143:10)\n    at Module.load (internal/modules/cjs/loader.js:979:32)\n    at Function.Module._load (internal/modules/cjs/loader.js:819:12)\n    at Module.require (internal/modules/cjs/loader.js:1003:19)\n    at require (/home/inga/Documents/GitHub/gifts_shop/TestGuru/node_modules/v8-compile-cache/v8-compile-cache.js:159:20)\n    at loadPartialConfigAsync (/home/inga/Documents/GitHub/gifts_shop/TestGuru/node_modules/@babel/core/lib/config/index.js:34:85)\n    at Object.<anonymous> (/home/inga/Documents/GitHub/gifts_shop/TestGuru/node_modules/babel-loader/lib/index.js:126:26)\n    at Generator.next (<anonymous>)\n    at asyncGeneratorStep (/home/inga/Documents/GitHub/gifts_shop/TestGuru/node_modules/babel-loader/lib/index.js:3:103)\n    at _next (/home/inga/Documents/GitHub/gifts_shop/TestGuru/node_modules/babel-loader/lib/index.js:4:194)\n    at /home/inga/Documents/GitHub/gifts_shop/TestGuru/node_modules/babel-loader/lib/index.js:4:364\n    at new Promise (<anonymous>)\n    at Object.<anonymous> (/home/inga/Documents/GitHub/gifts_shop/TestGuru/node_modules/babel-loader/lib/index.js:4:97)\n    at Object._loader (/home/inga/Documents/GitHub/gifts_shop/TestGuru/node_modules/babel-loader/lib/index.js:210:18)\n    at Object.loader (/home/inga/Documents/GitHub/gifts_shop/TestGuru/node_modules/babel-loader/lib/index.js:48:18)\n    at Object.<anonymous> (/home/inga/Documents/GitHub/gifts_shop/TestGuru/node_modules/babel-loader/lib/index.js:44:12)");

/***/ })

/******/ });
//# sourceMappingURL=application-ba6f7604780d470ae668.js.map