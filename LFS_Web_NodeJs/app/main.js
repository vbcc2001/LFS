"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
var platform_browser_dynamic_1 = require("@angular/platform-browser-dynamic");
var app_module_1 = require("./content/app.module");
var logo_module_1 = require("./logo/logo.module");
var header_module_1 = require("./header/header.module");
var sidebar_module_1 = require("./sidebar/sidebar.module");
var footer_module_1 = require("./footer/footer.module");
var platform = platform_browser_dynamic_1.platformBrowserDynamic();
platform.bootstrapModule(logo_module_1.LogoModule);
platform.bootstrapModule(header_module_1.HeaderModule);
platform.bootstrapModule(sidebar_module_1.SidebarModule);
platform.bootstrapModule(app_module_1.AppModule);
platform.bootstrapModule(footer_module_1.FooterModule);
//# sourceMappingURL=main.js.map