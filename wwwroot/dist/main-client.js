!function(e){function t(o){if(n[o])return n[o].exports;var a=n[o]={exports:{},id:o,loaded:!1};return e[o].call(a.exports,a,a.exports,t),a.loaded=!0,a.exports}var n={};return t.m=e,t.c=n,t.p="/dist/",t(0)}([function(e,t,n){(function(e){"use strict";n(23);var t=n(1),o=n(4),a=n(14);n(24),e.hot?(e.hot.accept(),e.hot.dispose(function(){r.destroy()})):t.enableProdMode();var r=o.platformUniversalDynamic(),i=function(){r.bootstrapModule(a.AppModule)};"complete"===document.readyState?i():document.addEventListener("DOMContentLoaded",i)}).call(t,n(20)(e))},function(e,t,n){e.exports=n(2)(4)},function(e,t){e.exports=vendor_7d56f7653d348d3bcb32},function(e,t){e.exports=function(){var e=[];return e.toString=function(){for(var e=[],t=0;t<this.length;t++){var n=this[t];n[2]?e.push("@media "+n[2]+"{"+n[1]+"}"):e.push(n[1])}return e.join("")},e.i=function(t,n){"string"==typeof t&&(t=[[null,t,""]]);for(var o={},a=0;a<this.length;a++){var r=this[a][0];"number"==typeof r&&(o[r]=!0)}for(a=0;a<t.length;a++){var i=t[a];"number"==typeof i[0]&&o[i[0]]||(n&&!i[2]?i[2]=n:n&&(i[2]="("+i[2]+") and ("+n+")"),e.push(i))}},e}},function(e,t,n){e.exports=n(2)(48)},function(e,t,n){t=e.exports=n(3)(),t.push([e.id,"@media (max-width:767px){.body-content{padding-top:50px}}",""])},function(e,t,n){t=e.exports=n(3)(),t.push([e.id,"li .glyphicon{margin-right:10px}li.link-active a,li.link-active a:focus,li.link-active a:hover{background-color:#4189c7;color:#fff}.main-nav{position:fixed;top:0;left:0;right:0;z-index:1}@media (min-width:768px){.main-nav{height:100%;width:calc(25% - 20px)}.navbar{border-radius:0;border-width:0;height:100%}.navbar-header{float:none}.navbar-collapse{border-top:1px solid #444;padding:0}.navbar ul{float:none}.navbar li{float:none;font-size:15px;margin:6px}.navbar li a{padding:10px 16px;border-radius:4px}.navbar a{width:100%;white-space:nowrap;overflow:hidden;text-overflow:ellipsis}}",""])},function(e,t){e.exports="<div class='container-fluid'>\n    <div class='row'>\n        <div class='col-sm-3'>\n            <nav-menu></nav-menu>\n        </div>\n        <div class='col-sm-9 body-content'>\n            <router-outlet></router-outlet>\n        </div>\n    </div>\n</div>\n"},function(e,t){e.exports='<h2>Counter</h2>\n\n<p>This is a simple example of an Angular 2 component.</p>\n\n<p>Current count: <strong>{{ currentCount }}</strong></p>\n\n<button (click)="incrementCounter()">Increment</button>\n'},function(e,t){e.exports='<h1>Weather forecast</h1>\n\n<p>This component demonstrates fetching data from the server.</p>\n\n<p *ngIf="!forecasts"><em>Loading...</em></p>\n\n<table class=\'table\' *ngIf="forecasts">\n    <thead>\n        <tr>\n            <th>Date</th>\n            <th>Temp. (C)</th>\n            <th>Temp. (F)</th>\n            <th>Summary</th>\n        </tr>\n    </thead>\n    <tbody>\n        <tr *ngFor="let forecast of forecasts">\n            <td>{{ forecast.dateFormatted }}</td>\n            <td>{{ forecast.temperatureC }}</td>\n            <td>{{ forecast.temperatureF }}</td>\n            <td>{{ forecast.summary }}</td>\n        </tr>\n    </tbody>\n</table>\n'},function(e,t){e.exports="<h1>Hello, world!  This is nice.</h1>\n<p>Welcome to your new single-page application, built with:</p>\n<ul>\n    <li><a href='https://get.asp.net/'>ASP.NET Core</a> and <a href='https://msdn.microsoft.com/en-us/library/67ef8sbd.aspx'>C#</a> for cross-platform server-side code</li>\n    <li><a href='https://angular.io/'>Angular 2</a> and <a href='http://www.typescriptlang.org/'>TypeScript</a> for client-side code</li>\n    <li><a href='https://webpack.github.io/'>Webpack</a> for building and bundling client-side resources</li>\n    <li><a href='http://getbootstrap.com/'>Bootstrap</a> for layout and styling</li>\n</ul>\n<p>To help you get started, we've also set up:</p>\n<ul>\n    <li><strong>Client-side navigation</strong>. For example, click <em>Counter</em> then <em>Back</em> to return here.</li>\n    <li><strong>Server-side prerendering</strong>. For faster initial loading and improved SEO, your Angular 2 app is prerendered on the server. The resulting HTML is then transferred to the browser where a client-side copy of the app takes over.</li>\n    <li><strong>Webpack dev middleware</strong>. In development mode, there's no need to run the <code>webpack</code> build tool. Your client-side resources are dynamically built on demand. Updates are available as soon as you modify any file.</li>\n    <li><strong>Hot module replacement</strong>. In development mode, you don't even need to reload the page after making most changes. Within seconds of saving changes to files, your Angular 2 app will be rebuilt and a new instance injected is into the page.</li>\n    <li><strong>Efficient production builds</strong>. In production mode, development-time features are disabled, and the <code>webpack</code> build tool produces minified static CSS and JavaScript files.</li>\n</ul>\n"},function(e,t){e.exports="<div class='main-nav'>\n    <div class='navbar navbar-inverse'>\n        <div class='navbar-header'>\n            <button type='button' class='navbar-toggle' data-toggle='collapse' data-target='.navbar-collapse'>\n                <span class='sr-only'>Toggle navigation</span>\n                <span class='icon-bar'></span>\n                <span class='icon-bar'></span>\n                <span class='icon-bar'></span>\n            </button>\n            <a class='navbar-brand' [routerLink]=\"['/home']\">rosterwebnet</a>\n        </div>\n        <div class='clearfix'></div>\n        <div class='navbar-collapse collapse'>\n            <ul class='nav navbar-nav'>\n                <li [routerLinkActive]=\"['link-active']\">\n                    <a [routerLink]=\"['/home']\">\n                        <span class='glyphicon glyphicon-home'></span> Home\n                    </a>\n                </li>\n                <li [routerLinkActive]=\"['link-active']\">\n                    <a [routerLink]=\"['/counter']\">\n                        <!--<span class='glyphicon glyphicon-education'></span> Counter-->\n                        <i class=\"fa fa-calculator\" aria-hidden=\"true\"></i> Counter\n                    </a>\n                </li>\n                <li [routerLinkActive]=\"['link-active']\">\n                    <a [routerLink]=\"['/fetch-data']\">\n                        <span class='glyphicon glyphicon-th-list'></span> Fetch data\n                    </a>\n                </li>\n            </ul>\n        </div>\n    </div>\n</div>\n"},function(e,t,n){var o=n(5);"string"==typeof o?e.exports=o:e.exports=o.toString()},function(e,t,n){var o=n(6);"string"==typeof o?e.exports=o:e.exports=o.toString()},function(e,t,n){"use strict";var o=this&&this.__decorate||function(e,t,n,o){var a,r=arguments.length,i=r<3?t:null===o?o=Object.getOwnPropertyDescriptor(t,n):o;if("object"==typeof Reflect&&"function"==typeof Reflect.decorate)i=Reflect.decorate(e,t,n,o);else for(var c=e.length-1;c>=0;c--)(a=e[c])&&(i=(r<3?a(i):r>3?a(t,n,i):a(t,n))||i);return r>3&&i&&Object.defineProperty(t,n,i),i},a=this&&this.__metadata||function(e,t){if("object"==typeof Reflect&&"function"==typeof Reflect.metadata)return Reflect.metadata(e,t)},r=n(1),i=n(22),c=n(4),s=n(15),l=n(19),p=n(18),f=n(17),d=n(16),u=function(){function e(){}return e=o([r.NgModule({bootstrap:[s.AppComponent],declarations:[s.AppComponent,l.NavMenuComponent,d.CounterComponent,f.FetchDataComponent,p.HomeComponent],imports:[c.UniversalModule,i.RouterModule.forRoot([{path:"",redirectTo:"home",pathMatch:"full"},{path:"home",component:p.HomeComponent},{path:"counter",component:d.CounterComponent},{path:"fetch-data",component:f.FetchDataComponent},{path:"**",redirectTo:"home"}])]}),a("design:paramtypes",[])],e)}();t.AppModule=u},function(e,t,n){"use strict";var o=this&&this.__decorate||function(e,t,n,o){var a,r=arguments.length,i=r<3?t:null===o?o=Object.getOwnPropertyDescriptor(t,n):o;if("object"==typeof Reflect&&"function"==typeof Reflect.decorate)i=Reflect.decorate(e,t,n,o);else for(var c=e.length-1;c>=0;c--)(a=e[c])&&(i=(r<3?a(i):r>3?a(t,n,i):a(t,n))||i);return r>3&&i&&Object.defineProperty(t,n,i),i},a=this&&this.__metadata||function(e,t){if("object"==typeof Reflect&&"function"==typeof Reflect.metadata)return Reflect.metadata(e,t)},r=n(1),i=function(){function e(){}return e=o([r.Component({selector:"app",template:n(7),styles:[n(12)]}),a("design:paramtypes",[])],e)}();t.AppComponent=i},function(e,t,n){"use strict";var o=this&&this.__decorate||function(e,t,n,o){var a,r=arguments.length,i=r<3?t:null===o?o=Object.getOwnPropertyDescriptor(t,n):o;if("object"==typeof Reflect&&"function"==typeof Reflect.decorate)i=Reflect.decorate(e,t,n,o);else for(var c=e.length-1;c>=0;c--)(a=e[c])&&(i=(r<3?a(i):r>3?a(t,n,i):a(t,n))||i);return r>3&&i&&Object.defineProperty(t,n,i),i},a=this&&this.__metadata||function(e,t){if("object"==typeof Reflect&&"function"==typeof Reflect.metadata)return Reflect.metadata(e,t)},r=n(1),i=function(){function e(){this.currentCount=0}return e.prototype.incrementCounter=function(){this.currentCount++},e=o([r.Component({selector:"counter",template:n(8)}),a("design:paramtypes",[])],e)}();t.CounterComponent=i},function(e,t,n){"use strict";var o=this&&this.__decorate||function(e,t,n,o){var a,r=arguments.length,i=r<3?t:null===o?o=Object.getOwnPropertyDescriptor(t,n):o;if("object"==typeof Reflect&&"function"==typeof Reflect.decorate)i=Reflect.decorate(e,t,n,o);else for(var c=e.length-1;c>=0;c--)(a=e[c])&&(i=(r<3?a(i):r>3?a(t,n,i):a(t,n))||i);return r>3&&i&&Object.defineProperty(t,n,i),i},a=this&&this.__metadata||function(e,t){if("object"==typeof Reflect&&"function"==typeof Reflect.metadata)return Reflect.metadata(e,t)},r=n(1),i=n(21),c=function(){function e(e){var t=this;e.get("/api/SampleData/WeatherForecasts").subscribe(function(e){t.forecasts=e.json()})}return e=o([r.Component({selector:"fetchdata",template:n(9)}),a("design:paramtypes",[i.Http])],e)}();t.FetchDataComponent=c},function(e,t,n){"use strict";var o=this&&this.__decorate||function(e,t,n,o){var a,r=arguments.length,i=r<3?t:null===o?o=Object.getOwnPropertyDescriptor(t,n):o;if("object"==typeof Reflect&&"function"==typeof Reflect.decorate)i=Reflect.decorate(e,t,n,o);else for(var c=e.length-1;c>=0;c--)(a=e[c])&&(i=(r<3?a(i):r>3?a(t,n,i):a(t,n))||i);return r>3&&i&&Object.defineProperty(t,n,i),i},a=this&&this.__metadata||function(e,t){if("object"==typeof Reflect&&"function"==typeof Reflect.metadata)return Reflect.metadata(e,t)},r=n(1),i=function(){function e(){}return e=o([r.Component({selector:"home",template:n(10)}),a("design:paramtypes",[])],e)}();t.HomeComponent=i},function(e,t,n){"use strict";var o=this&&this.__decorate||function(e,t,n,o){var a,r=arguments.length,i=r<3?t:null===o?o=Object.getOwnPropertyDescriptor(t,n):o;if("object"==typeof Reflect&&"function"==typeof Reflect.decorate)i=Reflect.decorate(e,t,n,o);else for(var c=e.length-1;c>=0;c--)(a=e[c])&&(i=(r<3?a(i):r>3?a(t,n,i):a(t,n))||i);return r>3&&i&&Object.defineProperty(t,n,i),i},a=this&&this.__metadata||function(e,t){if("object"==typeof Reflect&&"function"==typeof Reflect.metadata)return Reflect.metadata(e,t)},r=n(1),i=function(){function e(){}return e=o([r.Component({selector:"nav-menu",template:n(11),styles:[n(13)]}),a("design:paramtypes",[])],e)}();t.NavMenuComponent=i},function(e,t,n){e.exports=n(2)(126)},function(e,t,n){e.exports=n(2)(25)},function(e,t,n){e.exports=n(2)(44)},function(e,t,n){e.exports=n(2)(45)},function(e,t,n){e.exports=n(2)(52)}]);