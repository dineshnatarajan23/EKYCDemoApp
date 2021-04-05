/*!
 * Viewer.js v1.5.0
 * https://fengyuanchen.github.io/viewerjs
 *
 * Copyright 2015-present Chen Fengyuan
 * Released under the MIT license
 *
 * Date: 2019-11-23T05:10:26.193Z
 */
!function(t,i){"object"==typeof exports&&"undefined"!=typeof module?module.exports=i():"function"==typeof define&&define.amd?define(i):(t=t||self).Viewer=i()}(this,function(){"use strict";function i(t){return(i="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t})(t)}function n(t,i){for(var e=0;e<i.length;e++){var n=i[e];n.enumerable=n.enumerable||!1,n.configurable=!0,"value"in n&&(n.writable=!0),Object.defineProperty(t,n.key,n)}}function e(i,t){var e=Object.keys(i);if(Object.getOwnPropertySymbols){var n=Object.getOwnPropertySymbols(i);t&&(n=n.filter(function(t){return Object.getOwnPropertyDescriptor(i,t).enumerable})),e.push.apply(e,n)}return e}function r(s){for(var t=1;t<arguments.length;t++){var o=null!=arguments[t]?arguments[t]:{};t%2?e(Object(o),!0).forEach(function(t){var i,e,n;i=s,n=o[e=t],e in i?Object.defineProperty(i,e,{value:n,enumerable:!0,configurable:!0,writable:!0}):i[e]=n}):Object.getOwnPropertyDescriptors?Object.defineProperties(s,Object.getOwnPropertyDescriptors(o)):e(Object(o)).forEach(function(t){Object.defineProperty(s,t,Object.getOwnPropertyDescriptor(o,t))})}return s}var s={backdrop:!0,button:!0,navbar:!0,title:!0,toolbar:!0,className:"",container:"body",filter:null,fullscreen:!0,initialViewIndex:0,inline:!1,interval:5e3,keyboard:!0,loading:!0,loop:!0,minWidth:200,minHeight:100,movable:!0,rotatable:!0,scalable:!0,zoomable:!0,zoomOnTouch:!0,zoomOnWheel:!0,slideOnTouch:!0,toggleOnDblclick:!0,tooltip:!0,transition:!0,zIndex:2015,zIndexInline:0,zoomRatio:.1,minZoomRatio:.01,maxZoomRatio:100,url:"src",ready:null,show:null,shown:null,hide:null,hidden:null,view:null,viewed:null,zoom:null,zoomed:null},o="undefined"!=typeof window&&void 0!==window.document,a=o?window:{},h=o&&"ontouchstart"in a.document.documentElement,t=o&&"PointerEvent"in a,p="viewer",l="move",c="switch",u="zoom",f="".concat(p,"-active"),w="".concat(p,"-close"),b="".concat(p,"-fade"),y="".concat(p,"-fixed"),x="".concat(p,"-fullscreen"),d="".concat(p,"-fullscreen-exit"),k="".concat(p,"-hide"),m="".concat(p,"-hide-md-down"),g="".concat(p,"-hide-sm-down"),v="".concat(p,"-hide-xs-down"),z="".concat(p,"-in"),D="".concat(p,"-invisible"),T="".concat(p,"-loading"),E="".concat(p,"-move"),I="".concat(p,"-open"),O="".concat(p,"-show"),S="".concat(p,"-transition"),C="click",L="dblclick",N="dragstart",M="hidden",R="hide",Y="keydown",q="load",X=t?"pointerdown":h?"touchstart":"mousedown",F=t?"pointermove":h?"touchmove":"mousemove",W=t?"pointerup pointercancel":h?"touchend touchcancel":"mouseup",P="ready",A="resize",j="show",H="shown",V="transitionend",B="viewed",K="".concat(p,"Action"),U=/\s\s*/,Z=["zoom-in","zoom-out","one-to-one","reset","prev","play","next","rotate-left","rotate-right","flip-horizontal","flip-vertical"];function $(t){return"string"==typeof t}var _=Number.isNaN||a.isNaN;function G(t){return"number"==typeof t&&!_(t)}function J(t){return void 0===t}function Q(t){return"object"===i(t)&&null!==t}var tt=Object.prototype.hasOwnProperty;function it(t){if(!Q(t))return!1;try{var i=t.constructor,e=i.prototype;return i&&e&&tt.call(e,"isPrototypeOf")}catch(t){return!1}}function et(t){return"function"==typeof t}function nt(i,e){if(i&&et(e))if(Array.isArray(i)||G(i.length)){var t,n=i.length;for(t=0;t<n&&!1!==e.call(i,i[t],t,i);t+=1);}else Q(i)&&Object.keys(i).forEach(function(t){e.call(i,i[t],t,i)});return i}var st=Object.assign||function(e){for(var t=arguments.length,i=new Array(1<t?t-1:0),n=1;n<t;n++)i[n-1]=arguments[n];return Q(e)&&0<i.length&&i.forEach(function(i){Q(i)&&Object.keys(i).forEach(function(t){e[t]=i[t]})}),e},ot=/^(?:width|height|left|top|marginLeft|marginTop)$/;function at(t,i){var e=t.style;nt(i,function(t,i){ot.test(i)&&G(t)&&(t+="px"),e[i]=t})}function rt(t,i){return!(!t||!i)&&(t.classList?t.classList.contains(i):-1<t.className.indexOf(i))}function ht(t,i){if(t&&i)if(G(t.length))nt(t,function(t){ht(t,i)});else if(t.classList)t.classList.add(i);else{var e=t.className.trim();e?e.indexOf(i)<0&&(t.className="".concat(e," ").concat(i)):t.className=i}}function lt(t,i){t&&i&&(G(t.length)?nt(t,function(t){lt(t,i)}):t.classList?t.classList.remove(i):0<=t.className.indexOf(i)&&(t.className=t.className.replace(i,"")))}function ct(t,i,e){i&&(G(t.length)?nt(t,function(t){ct(t,i,e)}):e?ht(t,i):lt(t,i))}var ut=/([a-z\d])([A-Z])/g;function dt(t){return t.replace(ut,"$1-$2").toLowerCase()}function mt(t,i){return Q(t[i])?t[i]:t.dataset?t.dataset[i]:t.getAttribute("data-".concat(dt(i)))}function ft(t,i,e){Q(e)?t[i]=e:t.dataset?t.dataset[i]=e:t.setAttribute("data-".concat(dt(i)),e)}var gt=function(){var t=!1;if(o){var i=!1,e=function(){},n=Object.defineProperty({},"once",{get:function(){return t=!0,i},set:function(t){i=t}});a.addEventListener("test",e,n),a.removeEventListener("test",e,n)}return t}();function vt(e,t,n,i){var s=3<arguments.length&&void 0!==i?i:{},o=n;t.trim().split(U).forEach(function(t){if(!gt){var i=e.listeners;i&&i[t]&&i[t][n]&&(o=i[t][n],delete i[t][n],0===Object.keys(i[t]).length&&delete i[t],0===Object.keys(i).length&&delete e.listeners)}e.removeEventListener(t,o,s)})}function pt(o,t,a,i){var r=3<arguments.length&&void 0!==i?i:{},h=a;t.trim().split(U).forEach(function(n){if(r.once&&!gt){var t=o.listeners,s=void 0===t?{}:t;h=function(){delete s[n][a],o.removeEventListener(n,h,r);for(var t=arguments.length,i=new Array(t),e=0;e<t;e++)i[e]=arguments[e];a.apply(o,i)},s[n]||(s[n]={}),s[n][a]&&o.removeEventListener(n,s[n][a],r),s[n][a]=h,o.listeners=s}o.addEventListener(n,h,r)})}function wt(t,i,e){var n;return et(Event)&&et(CustomEvent)?n=new CustomEvent(i,{detail:e,bubbles:!0,cancelable:!0}):(n=document.createEvent("CustomEvent")).initCustomEvent(i,!0,!0,e),t.dispatchEvent(n)}function bt(t){var i=t.rotate,e=t.scaleX,n=t.scaleY,s=t.translateX,o=t.translateY,a=[];G(s)&&0!==s&&a.push("translateX(".concat(s,"px)")),G(o)&&0!==o&&a.push("translateY(".concat(o,"px)")),G(i)&&0!==i&&a.push("rotate(".concat(i,"deg)")),G(e)&&1!==e&&a.push("scaleX(".concat(e,")")),G(n)&&1!==n&&a.push("scaleY(".concat(n,")"));var r=a.length?a.join(" "):"none";return{WebkitTransform:r,msTransform:r,transform:r}}var yt=a.navigator&&/(Macintosh|iPhone|iPod|iPad).*AppleWebKit/i.test(a.navigator.userAgent);function xt(t,i){var e=document.createElement("img");if(t.naturalWidth&&!yt)return i(t.naturalWidth,t.naturalHeight),e;var n=document.body||document.documentElement;return e.onload=function(){i(e.width,e.height),yt||n.removeChild(e)},e.src=t.src,yt||(e.style.cssText="left:0;max-height:none!important;max-width:none!important;min-height:0!important;min-width:0!important;opacity:0;position:absolute;top:0;z-index:-1;",n.appendChild(e)),e}function kt(t){switch(t){case 2:return v;case 3:return g;case 4:return m;default:return""}}function zt(t,i){var e=t.pageX,n=t.pageY,s={endX:e,endY:n};return i?s:r({timeStamp:Date.now(),startX:e,startY:n},s)}var Dt={render:function(){this.initContainer(),this.initViewer(),this.initList(),this.renderViewer()},initContainer:function(){this.containerData={width:window.innerWidth,height:window.innerHeight}},initViewer:function(){var t,i=this.options,e=this.parent;i.inline&&(t={width:Math.max(e.offsetWidth,i.minWidth),height:Math.max(e.offsetHeight,i.minHeight)},this.parentData=t),!this.fulled&&t||(t=this.containerData),this.viewerData=st({},t)},renderViewer:function(){this.options.inline&&!this.fulled&&at(this.viewer,this.viewerData)},initList:function(){var r=this,t=this.element,h=this.options,l=this.list,c=[];l.innerHTML="",nt(this.images,function(t,i){var e=t.src,n=t.alt||function(t){return $(t)?decodeURIComponent(t.replace(/^.*\//,"").replace(/[?&#].*$/,"")):""}(e),s=h.url;if($(s)?s=t.getAttribute(s):et(s)&&(s=s.call(r,t)),e||s){var o=document.createElement("li"),a=document.createElement("img");a.src=e||s,a.alt=n,a.setAttribute("data-index",i),a.setAttribute("data-original-url",s||e),a.setAttribute("data-viewer-action","view"),a.setAttribute("role","button"),o.appendChild(a),l.appendChild(o),c.push(o)}}),nt(this.items=c,function(i){var t=i.firstElementChild;ft(t,"filled",!0),h.loading&&ht(i,T),pt(t,q,function(t){h.loading&&lt(i,T),r.loadImage(t)},{once:!0})}),h.transition&&pt(t,B,function(){ht(l,S)},{once:!0})},renderList:function(t){var i=t||this.index,e=this.items[i].offsetWidth||30,n=e+1;at(this.list,st({width:n*this.length},bt({translateX:(this.viewerData.width-e)/2-n*i})))},resetList:function(){var t=this.list;t.innerHTML="",lt(t,S),at(t,bt({translateX:0}))},initImage:function(r){var t,h=this,l=this.options,i=this.image,e=this.viewerData,n=this.footer.offsetHeight,c=e.width,u=Math.max(e.height-n,n),d=this.imageData||{};this.imageInitializing={abort:function(){t.onload=null}},t=xt(i,function(t,i){var e=t/i,n=c,s=u;h.imageInitializing=!1,c<u*e?s=c/e:n=u*e;var o={naturalWidth:t,naturalHeight:i,aspectRatio:e,ratio:(n=Math.min(.9*n,t))/t,width:n,height:s=Math.min(.9*s,i),left:(c-n)/2,top:(u-s)/2},a=st({},o);l.rotatable&&(o.rotate=d.rotate||0,a.rotate=0),l.scalable&&(o.scaleX=d.scaleX||1,o.scaleY=d.scaleY||1,a.scaleX=1,a.scaleY=1),h.imageData=o,h.initialImageData=a,r&&r()})},renderImage:function(t){var i=this,e=this.image,n=this.imageData;if(at(e,st({width:n.width,height:n.height,marginLeft:n.left,marginTop:n.top},bt(n))),t)if((this.viewing||this.zooming)&&this.options.transition){var s=function(){i.imageRendering=!1,t()};this.imageRendering={abort:function(){vt(e,V,s)}},pt(e,V,s,{once:!0})}else t()},resetImage:function(){if(this.viewing||this.viewed){var t=this.image;this.viewing&&this.viewing.abort(),t.parentNode.removeChild(t),this.image=null}}},Tt={bind:function(){var t=this.options,i=this.viewer,e=this.canvas,n=this.element.ownerDocument;pt(i,C,this.onClick=this.click.bind(this)),pt(i,N,this.onDragStart=this.dragstart.bind(this)),pt(e,X,this.onPointerDown=this.pointerdown.bind(this)),pt(n,F,this.onPointerMove=this.pointermove.bind(this)),pt(n,W,this.onPointerUp=this.pointerup.bind(this)),pt(n,Y,this.onKeyDown=this.keydown.bind(this)),pt(window,A,this.onResize=this.resize.bind(this)),t.zoomable&&t.zoomOnWheel&&pt(i,"wheel",this.onWheel=this.wheel.bind(this),{passive:!1,capture:!0}),t.toggleOnDblclick&&pt(e,L,this.onDblclick=this.dblclick.bind(this))},unbind:function(){var t=this.options,i=this.viewer,e=this.canvas,n=this.element.ownerDocument;vt(i,C,this.onClick),vt(i,N,this.onDragStart),vt(e,X,this.onPointerDown),vt(n,F,this.onPointerMove),vt(n,W,this.onPointerUp),vt(n,Y,this.onKeyDown),vt(window,A,this.onResize),t.zoomable&&t.zoomOnWheel&&vt(i,"wheel",this.onWheel,{passive:!1,capture:!0}),t.toggleOnDblclick&&vt(e,L,this.onDblclick)}},Et={click:function(t){var i=t.target,e=this.options,n=this.imageData,s=mt(i,K);switch(h&&t.isTrusted&&i===this.canvas&&clearTimeout(this.clickCanvasTimeout),s){case"mix":this.played?this.stop():e.inline?this.fulled?this.exit():this.full():this.hide();break;case"hide":this.hide();break;case"view":this.view(mt(i,"index"));break;case"zoom-in":this.zoom(.1,!0);break;case"zoom-out":this.zoom(-.1,!0);break;case"one-to-one":this.toggle();break;case"reset":this.reset();break;case"prev":this.prev(e.loop);break;case"play":this.play(e.fullscreen);break;case"next":this.next(e.loop);break;case"rotate-left":this.rotate(-90);break;case"rotate-right":this.rotate(90);break;case"flip-horizontal":this.scaleX(-n.scaleX||-1);break;case"flip-vertical":this.scaleY(-n.scaleY||-1);break;default:this.played&&this.stop()}},dblclick:function(t){t.preventDefault(),this.viewed&&t.target===this.image&&(h&&t.isTrusted&&clearTimeout(this.doubleClickImageTimeout),this.toggle())},load:function(){var t=this;this.timeout&&(clearTimeout(this.timeout),this.timeout=!1);var i=this.element,e=this.options,n=this.image,s=this.index,o=this.viewerData;lt(n,D),e.loading&&lt(this.canvas,T),n.style.cssText="height:0;"+"margin-left:".concat(o.width/2,"px;")+"margin-top:".concat(o.height/2,"px;")+"max-width:none!important;position:absolute;width:0;",this.initImage(function(){ct(n,E,e.movable),ct(n,S,e.transition),t.renderImage(function(){t.viewed=!0,t.viewing=!1,et(e.viewed)&&pt(i,B,e.viewed,{once:!0}),wt(i,B,{originalImage:t.images[s],index:s,image:n})})})},loadImage:function(t){var o=t.target,i=o.parentNode,a=i.offsetWidth||30,r=i.offsetHeight||50,h=!!mt(o,"filled");xt(o,function(t,i){var e=t/i,n=a,s=r;a<r*e?h?n=r*e:s=a/e:h?s=a/e:n=r*e,at(o,st({width:n,height:s},bt({translateX:(a-n)/2,translateY:(r-s)/2})))})},keydown:function(t){var i=this.options;if(this.fulled&&i.keyboard)switch(t.keyCode||t.which||t.charCode){case 27:this.played?this.stop():i.inline?this.fulled&&this.exit():this.hide();break;case 32:this.played&&this.stop();break;case 37:this.prev(i.loop);break;case 38:t.preventDefault(),this.zoom(i.zoomRatio,!0);break;case 39:this.next(i.loop);break;case 40:t.preventDefault(),this.zoom(-i.zoomRatio,!0);break;case 48:case 49:t.ctrlKey&&(t.preventDefault(),this.toggle())}},dragstart:function(t){"img"===t.target.tagName.toLowerCase()&&t.preventDefault()},pointerdown:function(t){var i=this.options,e=this.pointers,n=t.buttons,s=t.button;if(!(!this.viewed||this.showing||this.viewing||this.hiding||("mousedown"===t.type||"pointerdown"===t.type&&"mouse"===t.pointerType)&&(G(n)&&1!==n||G(s)&&0!==s||t.ctrlKey))){t.preventDefault(),t.changedTouches?nt(t.changedTouches,function(t){e[t.identifier]=zt(t)}):e[t.pointerId||0]=zt(t);var o=!!i.movable&&l;i.zoomOnTouch&&i.zoomable&&1<Object.keys(e).length?o=u:i.slideOnTouch&&("touch"===t.pointerType||"touchstart"===t.type)&&this.isSwitchable()&&(o=c),!i.transition||o!==l&&o!==u||lt(this.image,S),this.action=o}},pointermove:function(t){var i=this.pointers,e=this.action;this.viewed&&e&&(t.preventDefault(),t.changedTouches?nt(t.changedTouches,function(t){st(i[t.identifier]||{},zt(t,!0))}):st(i[t.pointerId||0]||{},zt(t,!0)),this.change(t))},pointerup:function(t){var i,e=this,n=this.options,s=this.action,o=this.pointers;t.changedTouches?nt(t.changedTouches,function(t){i=o[t.identifier],delete o[t.identifier]}):(i=o[t.pointerId||0],delete o[t.pointerId||0]),s&&(t.preventDefault(),!n.transition||s!==l&&s!==u||ht(this.image,S),this.action=!1,h&&s!==u&&i&&Date.now()-i.timeStamp<500&&(clearTimeout(this.clickCanvasTimeout),clearTimeout(this.doubleClickImageTimeout),n.toggleOnDblclick&&this.viewed&&t.target===this.image?this.imageClicked?(this.imageClicked=!1,this.doubleClickImageTimeout=setTimeout(function(){wt(e.image,L)},50)):(this.imageClicked=!0,this.doubleClickImageTimeout=setTimeout(function(){e.imageClicked=!1},500)):(this.imageClicked=!1,n.backdrop&&"static"!==n.backdrop&&t.target===this.canvas&&(this.clickCanvasTimeout=setTimeout(function(){wt(e.canvas,C)},50)))))},resize:function(){var i=this;if(this.isShown&&!this.hiding&&(this.initContainer(),this.initViewer(),this.renderViewer(),this.renderList(),this.viewed&&this.initImage(function(){i.renderImage()}),this.played)){if(this.options.fullscreen&&this.fulled&&!(document.fullscreenElement||document.webkitFullscreenElement||document.mozFullScreenElement||document.msFullscreenElement))return void this.stop();nt(this.player.getElementsByTagName("img"),function(t){pt(t,q,i.loadImage.bind(i),{once:!0}),wt(t,q)})}},wheel:function(t){var i=this;if(this.viewed&&(t.preventDefault(),!this.wheeling)){this.wheeling=!0,setTimeout(function(){i.wheeling=!1},50);var e=Number(this.options.zoomRatio)||.1,n=1;t.deltaY?n=0<t.deltaY?1:-1:t.wheelDelta?n=-t.wheelDelta/120:t.detail&&(n=0<t.detail?1:-1),this.zoom(-n*e,!0,t)}}},It={show:function(t){var i=0<arguments.length&&void 0!==t&&t,e=this.element,n=this.options;if(n.inline||this.showing||this.isShown||this.showing)return this;if(!this.ready)return this.build(),this.ready&&this.show(i),this;if(et(n.show)&&pt(e,j,n.show,{once:!0}),!1===wt(e,j)||!this.ready)return this;this.hiding&&this.transitioning.abort(),this.showing=!0,this.open();var s=this.viewer;if(lt(s,k),n.transition&&!i){var o=this.shown.bind(this);this.transitioning={abort:function(){vt(s,V,o),lt(s,z)}},ht(s,S),s.initialOffsetWidth=s.offsetWidth,pt(s,V,o,{once:!0}),ht(s,z)}else ht(s,z),this.shown();return this},hide:function(){var t=0<arguments.length&&void 0!==arguments[0]&&arguments[0],i=this.element,e=this.options;if(e.inline||this.hiding||!this.isShown&&!this.showing)return this;if(et(e.hide)&&pt(i,R,e.hide,{once:!0}),!1===wt(i,R))return this;this.showing&&this.transitioning.abort(),this.hiding=!0,this.played?this.stop():this.viewing&&this.viewing.abort();var n=this.viewer;if(e.transition&&!t){var s=this.hidden.bind(this),o=function(){setTimeout(function(){pt(n,V,s,{once:!0}),lt(n,z)},0)};this.transitioning={abort:function(){this.viewed?vt(this.image,V,o):vt(n,V,s)}},this.viewed&&rt(this.image,S)?(pt(this.image,V,o,{once:!0}),this.zoomTo(0,!1,!1,!0)):o()}else lt(n,z),this.hidden();return this},view:function(t){var e=this,i=0<arguments.length&&void 0!==t?t:this.options.initialViewIndex;if(i=Number(i)||0,this.hiding||this.played||i<0||i>=this.length||this.viewed&&i===this.index)return this;if(!this.isShown)return this.index=i,this.show();this.viewing&&this.viewing.abort();var n=this.element,s=this.options,o=this.title,a=this.canvas,r=this.items[i],h=r.querySelector("img"),l=mt(h,"originalUrl"),c=h.getAttribute("alt"),u=document.createElement("img");if(u.src=l,u.alt=c,et(s.view)&&pt(n,"view",s.view,{once:!0}),!1===wt(n,"view",{originalImage:this.images[i],index:i,image:u})||!this.isShown||this.hiding||this.played)return this;this.image=u,lt(this.items[this.index],f),ht(r,f),this.viewed=!1,this.index=i,this.imageData={},ht(u,D),s.loading&&ht(a,T),a.innerHTML="",a.appendChild(u),this.renderList(),o.innerHTML="";function d(){var t=e.imageData,i=Array.isArray(s.title)?s.title[1]:s.title;o.innerHTML=function(t){return $(t)?t.replace(/&(?!amp;|quot;|#39;|lt;|gt;)/g,"&amp;").replace(/"/g,"&quot;").replace(/'/g,"&#39;").replace(/</g,"&lt;").replace(/>/g,"&gt;"):t}(et(i)?i.call(e,u,t):"".concat(c," (").concat(t.naturalWidth," � ").concat(t.naturalHeight,")"))}var m;return pt(n,B,d,{once:!0}),this.viewing={abort:function(){vt(n,B,d),u.complete?this.imageRendering?this.imageRendering.abort():this.imageInitializing&&this.imageInitializing.abort():(u.src="",vt(u,q,m),this.timeout&&clearTimeout(this.timeout))}},u.complete?this.load():(pt(u,q,m=this.load.bind(this),{once:!0}),this.timeout&&clearTimeout(this.timeout),this.timeout=setTimeout(function(){lt(u,D),e.timeout=!1},1e3)),this},prev:function(t){var i=0<arguments.length&&void 0!==t&&t,e=this.index-1;return e<0&&(e=i?this.length-1:0),this.view(e),this},next:function(t){var i=0<arguments.length&&void 0!==t&&t,e=this.length-1,n=this.index+1;return e<n&&(n=i?0:e),this.view(n),this},move:function(t,i){var e=this.imageData;return this.moveTo(J(t)?t:e.left+Number(t),J(i)?i:e.top+Number(i)),this},moveTo:function(t,i){var e=1<arguments.length&&void 0!==i?i:t,n=this.imageData;if(t=Number(t),e=Number(e),this.viewed&&!this.played&&this.options.movable){var s=!1;G(t)&&(n.left=t,s=!0),G(e)&&(n.top=e,s=!0),s&&this.renderImage()}return this},zoom:function(t,i,e){var n=1<arguments.length&&void 0!==i&&i,s=2<arguments.length&&void 0!==e?e:null,o=this.imageData;return t=(t=Number(t))<0?1/(1-t):1+t,this.zoomTo(o.width*t/o.naturalWidth,n,s),this},zoomTo:function(t,i,e,n){var s=this,o=1<arguments.length&&void 0!==i&&i,a=2<arguments.length&&void 0!==e?e:null,r=3<arguments.length&&void 0!==n&&n,h=this.element,l=this.options,c=this.pointers,u=this.imageData,d=u.width,m=u.height,f=u.left,g=u.top,v=u.naturalWidth,p=u.naturalHeight;if(G(t=Math.max(0,t))&&this.viewed&&!this.played&&(r||l.zoomable)){if(!r){var w=Math.max(.01,l.minZoomRatio),b=Math.min(100,l.maxZoomRatio);t=Math.min(Math.max(t,w),b)}a&&.95<t&&t<1.05&&(t=1);var y=v*t,x=p*t,k=y-d,z=x-m,D=d/v;if(et(l.zoom)&&pt(h,"zoom",l.zoom,{once:!0}),!1===wt(h,"zoom",{ratio:t,oldRatio:D,originalEvent:a}))return this;if(this.zooming=!0,a){var T=function(t){var i=t.getBoundingClientRect();return{left:i.left+(window.pageXOffset-document.documentElement.clientLeft),top:i.top+(window.pageYOffset-document.documentElement.clientTop)}}(this.viewer),E=c&&Object.keys(c).length?function(t){var n=0,s=0,o=0;return nt(t,function(t){var i=t.startX,e=t.startY;n+=i,s+=e,o+=1}),{pageX:n/=o,pageY:s/=o}}(c):{pageX:a.pageX,pageY:a.pageY};u.left-=k*((E.pageX-T.left-f)/d),u.top-=z*((E.pageY-T.top-g)/m)}else u.left-=k/2,u.top-=z/2;u.width=y,u.height=x,u.ratio=t,this.renderImage(function(){s.zooming=!1,et(l.zoomed)&&pt(h,"zoomed",l.zoomed,{once:!0}),wt(h,"zoomed",{ratio:t,oldRatio:D,originalEvent:a})}),o&&this.tooltip()}return this},rotate:function(t){return this.rotateTo((this.imageData.rotate||0)+Number(t)),this},rotateTo:function(t){var i=this.imageData;return G(t=Number(t))&&this.viewed&&!this.played&&this.options.rotatable&&(i.rotate=t,this.renderImage()),this},scaleX:function(t){return this.scale(t,this.imageData.scaleY),this},scaleY:function(t){return this.scale(this.imageData.scaleX,t),this},scale:function(t,i){var e=1<arguments.length&&void 0!==i?i:t,n=this.imageData;if(t=Number(t),e=Number(e),this.viewed&&!this.played&&this.options.scalable){var s=!1;G(t)&&(n.scaleX=t,s=!0),G(e)&&(n.scaleY=e,s=!0),s&&this.renderImage()}return this},play:function(){var i=this,t=0<arguments.length&&void 0!==arguments[0]&&arguments[0];if(!this.isShown||this.played)return this;var s=this.options,o=this.player,a=this.loadImage.bind(this),r=[],h=0,l=0;if(this.played=!0,this.onLoadWhenPlay=a,t&&this.requestFullscreen(),ht(o,O),nt(this.items,function(t,i){var e=t.querySelector("img"),n=document.createElement("img");n.src=mt(e,"originalUrl"),n.alt=e.getAttribute("alt"),h+=1,ht(n,b),ct(n,S,s.transition),rt(t,f)&&(ht(n,z),l=i),r.push(n),pt(n,q,a,{once:!0}),o.appendChild(n)}),G(s.interval)&&0<s.interval){var e=function t(){i.playing=setTimeout(function(){lt(r[l],z),ht(r[l=(l+=1)<h?l:0],z),t()},s.interval)};1<h&&e()}return this},stop:function(){var i=this;if(!this.played)return this;var t=this.player;return this.played=!1,clearTimeout(this.playing),nt(t.getElementsByTagName("img"),function(t){vt(t,q,i.onLoadWhenPlay)}),lt(t,O),t.innerHTML="",this.exitFullscreen(),this},full:function(){var t=this,i=this.options,e=this.viewer,n=this.image,s=this.list;return!this.isShown||this.played||this.fulled||!i.inline||(this.fulled=!0,this.open(),ht(this.button,d),i.transition&&(lt(s,S),this.viewed&&lt(n,S)),ht(e,y),e.setAttribute("style",""),at(e,{zIndex:i.zIndex}),this.initContainer(),this.viewerData=st({},this.containerData),this.renderList(),this.viewed&&this.initImage(function(){t.renderImage(function(){i.transition&&setTimeout(function(){ht(n,S),ht(s,S)},0)})})),this},exit:function(){var t=this,i=this.options,e=this.viewer,n=this.image,s=this.list;return this.isShown&&!this.played&&this.fulled&&i.inline&&(this.fulled=!1,this.close(),lt(this.button,d),i.transition&&(lt(s,S),this.viewed&&lt(n,S)),lt(e,y),at(e,{zIndex:i.zIndexInline}),this.viewerData=st({},this.parentData),this.renderViewer(),this.renderList(),this.viewed&&this.initImage(function(){t.renderImage(function(){i.transition&&setTimeout(function(){ht(n,S),ht(s,S)},0)})})),this},tooltip:function(){var t=this,i=this.options,e=this.tooltipBox,n=this.imageData;return this.viewed&&!this.played&&i.tooltip&&(e.textContent="".concat(Math.round(100*n.ratio),"%"),this.tooltipping?clearTimeout(this.tooltipping):i.transition?(this.fading&&wt(e,V),ht(e,O),ht(e,b),ht(e,S),e.initialOffsetWidth=e.offsetWidth,ht(e,z)):ht(e,O),this.tooltipping=setTimeout(function(){i.transition?(pt(e,V,function(){lt(e,O),lt(e,b),lt(e,S),t.fading=!1},{once:!0}),lt(e,z),t.fading=!0):lt(e,O),t.tooltipping=!1},1e3)),this},toggle:function(){return 1===this.imageData.ratio?this.zoomTo(this.initialImageData.ratio,!0):this.zoomTo(1,!0),this},reset:function(){return this.viewed&&!this.played&&(this.imageData=st({},this.initialImageData),this.renderImage()),this},update:function(){var t=this.element,i=this.options,e=this.isImg;if(e&&!t.parentNode)return this.destroy();var s=[];if(nt(e?[t]:t.querySelectorAll("img"),function(t){i.filter?i.filter(t)&&s.push(t):s.push(t)}),!s.length)return this;if(this.images=s,this.length=s.length,this.ready){var o=[];if(nt(this.items,function(t,i){var e=t.querySelector("img"),n=s[i];n&&e?n.src!==e.src&&o.push(i):o.push(i)}),at(this.list,{width:"auto"}),this.initList(),this.isShown)if(this.length){if(this.viewed){var n=o.indexOf(this.index);0<=n?(this.viewed=!1,this.view(Math.max(this.index-(n+1),0))):ht(this.items[this.index],f)}}else this.image=null,this.viewed=!1,this.index=0,this.imageData={},this.canvas.innerHTML="",this.title.innerHTML=""}else this.build();return this},destroy:function(){var t=this.element,i=this.options;return t[p]&&(this.destroyed=!0,this.ready?(this.played&&this.stop(),i.inline?(this.fulled&&this.exit(),this.unbind()):this.isShown?(this.viewing&&(this.imageRendering?this.imageRendering.abort():this.imageInitializing&&this.imageInitializing.abort()),this.hiding&&this.transitioning.abort(),this.hidden()):this.showing&&(this.transitioning.abort(),this.hidden()),this.ready=!1,this.viewer.parentNode.removeChild(this.viewer)):i.inline&&(this.delaying?this.delaying.abort():this.initializing&&this.initializing.abort()),i.inline||vt(t,C,this.onStart),t[p]=void 0),this}},Ot={open:function(){var t=this.body;ht(t,I),t.style.paddingRight="".concat(this.scrollbarWidth+(parseFloat(this.initialBodyPaddingRight)||0),"px")},close:function(){var t=this.body;lt(t,I),t.style.paddingRight=this.initialBodyPaddingRight},shown:function(){var t=this.element,i=this.options;this.fulled=!0,this.isShown=!0,this.render(),this.bind(),this.showing=!1,et(i.shown)&&pt(t,H,i.shown,{once:!0}),!1!==wt(t,H)&&this.ready&&this.isShown&&!this.hiding&&this.view(this.index)},hidden:function(){var t=this.element,i=this.options;this.fulled=!1,this.viewed=!1,this.isShown=!1,this.close(),this.unbind(),ht(this.viewer,k),this.resetList(),this.resetImage(),this.hiding=!1,this.destroyed||(et(i.hidden)&&pt(t,M,i.hidden,{once:!0}),wt(t,M))},requestFullscreen:function(){var t=this.element.ownerDocument;if(this.fulled&&!(t.fullscreenElement||t.webkitFullscreenElement||t.mozFullScreenElement||t.msFullscreenElement)){var i=t.documentElement;i.requestFullscreen?i.requestFullscreen():i.webkitRequestFullscreen?i.webkitRequestFullscreen(Element.ALLOW_KEYBOARD_INPUT):i.mozRequestFullScreen?i.mozRequestFullScreen():i.msRequestFullscreen&&i.msRequestFullscreen()}},exitFullscreen:function(){var t=this.element.ownerDocument;this.fulled&&(t.fullscreenElement||t.webkitFullscreenElement||t.mozFullScreenElement||t.msFullscreenElement)&&(t.exitFullscreen?t.exitFullscreen():t.webkitExitFullscreen?t.webkitExitFullscreen():t.mozCancelFullScreen?t.mozCancelFullScreen():t.msExitFullscreen&&t.msExitFullscreen())},change:function(t){var i=this.options,e=this.pointers,n=e[Object.keys(e)[0]],s=n.endX-n.startX,o=n.endY-n.startY;switch(this.action){case l:this.move(s,o);break;case u:this.zoom(function(t){var i=r({},t),h=[];return nt(t,function(r,t){delete i[t],nt(i,function(t){var i=Math.abs(r.startX-t.startX),e=Math.abs(r.startY-t.startY),n=Math.abs(r.endX-t.endX),s=Math.abs(r.endY-t.endY),o=Math.sqrt(i*i+e*e),a=(Math.sqrt(n*n+s*s)-o)/o;h.push(a)})}),h.sort(function(t,i){return Math.abs(t)<Math.abs(i)}),h[0]}(e),!1,t);break;case c:this.action="switched";var a=Math.abs(s);1<a&&a>Math.abs(o)&&(this.pointers={},1<s?this.prev(i.loop):s<-1&&this.next(i.loop))}nt(e,function(t){t.startX=t.endX,t.startY=t.endY})},isSwitchable:function(){var t=this.imageData,i=this.viewerData;return 1<this.length&&0<=t.left&&0<=t.top&&t.width<=i.width&&t.height<=i.height}},St=a.Viewer,Ct=function(){function e(t){var i=1<arguments.length&&void 0!==arguments[1]?arguments[1]:{};if(!function(t,i){if(!(t instanceof i))throw new TypeError("Cannot call a class as a function")}(this,e),!t||1!==t.nodeType)throw new Error("The first argument is required and must be an element.");this.element=t,this.options=st({},s,it(i)&&i),this.action=!1,this.fading=!1,this.fulled=!1,this.hiding=!1,this.imageClicked=!1,this.imageData={},this.index=this.options.initialViewIndex,this.isImg=!1,this.isShown=!1,this.length=0,this.played=!1,this.playing=!1,this.pointers={},this.ready=!1,this.showing=!1,this.timeout=!1,this.tooltipping=!1,this.viewed=!1,this.viewing=!1,this.wheeling=!1,this.zooming=!1,this.init()}return function(t,i,e){i&&n(t.prototype,i),e&&n(t,e)}(e,[{key:"init",value:function(){var e=this,t=this.element,n=this.options;if(!t[p]){t[p]=this;var i="img"===t.tagName.toLowerCase(),s=[];nt(i?[t]:t.querySelectorAll("img"),function(t){et(n.filter)?n.filter.call(e,t)&&s.push(t):s.push(t)}),this.isImg=i,this.length=s.length,this.images=s;var o=t.ownerDocument,a=o.body||o.documentElement;if(this.body=a,this.scrollbarWidth=window.innerWidth-o.documentElement.clientWidth,this.initialBodyPaddingRight=window.getComputedStyle(a).paddingRight,J(document.createElement(p).style.transition)&&(n.transition=!1),n.inline){var r=0,h=function(){var t;(r+=1)===e.length&&(e.initializing=!1,e.delaying={abort:function(){clearTimeout(t)}},t=setTimeout(function(){e.delaying=!1,e.build()},0))};this.initializing={abort:function(){nt(s,function(t){t.complete||vt(t,q,h)})}},nt(s,function(t){t.complete?h():pt(t,q,h,{once:!0})})}else pt(t,C,this.onStart=function(t){var i=t.target;"img"!==i.tagName.toLowerCase()||et(n.filter)&&!n.filter.call(e,i)||e.view(e.images.indexOf(i))})}}},{key:"build",value:function(){if(!this.ready){var t=this.element,h=this.options,i=t.parentNode,e=document.createElement("div");e.innerHTML='<div class="viewer-container" touch-action="none"><div class="viewer-canvas"></div><div class="viewer-footer"><div class="viewer-title"></div><div class="viewer-toolbar"></div><div class="viewer-navbar"><ul class="viewer-list"></ul></div></div><div class="viewer-tooltip"></div><div role="button" class="viewer-button" data-viewer-action="mix"></div><div class="viewer-player"></div></div>';var n=e.querySelector(".".concat(p,"-container")),s=n.querySelector(".".concat(p,"-title")),o=n.querySelector(".".concat(p,"-toolbar")),a=n.querySelector(".".concat(p,"-navbar")),r=n.querySelector(".".concat(p,"-button")),l=n.querySelector(".".concat(p,"-canvas"));if(this.parent=i,this.viewer=n,this.title=s,this.toolbar=o,this.navbar=a,this.button=r,this.canvas=l,this.footer=n.querySelector(".".concat(p,"-footer")),this.tooltipBox=n.querySelector(".".concat(p,"-tooltip")),this.player=n.querySelector(".".concat(p,"-player")),this.list=n.querySelector(".".concat(p,"-list")),ht(s,h.title?kt(Array.isArray(h.title)?h.title[0]:h.title):k),ht(a,h.navbar?kt(h.navbar):k),ct(r,k,!h.button),h.backdrop&&(ht(n,"".concat(p,"-backdrop")),h.inline||"static"===h.backdrop||ft(l,K,"hide")),$(h.className)&&h.className&&h.className.split(U).forEach(function(t){ht(n,t)}),h.toolbar){var c=document.createElement("ul"),u=it(h.toolbar),d=Z.slice(0,3),m=Z.slice(7,9),f=Z.slice(9);u||ht(o,kt(h.toolbar)),nt(u?h.toolbar:Z,function(t,i){var e=u&&it(t),n=u?dt(i):t,s=e&&!J(t.show)?t.show:t;if(s&&(h.zoomable||-1===d.indexOf(n))&&(h.rotatable||-1===m.indexOf(n))&&(h.scalable||-1===f.indexOf(n))){var o=e&&!J(t.size)?t.size:t,a=e&&!J(t.click)?t.click:t,r=document.createElement("li");r.setAttribute("role","button"),ht(r,"".concat(p,"-").concat(n)),et(a)||ft(r,K,n),G(s)&&ht(r,kt(s)),-1!==["small","large"].indexOf(o)?ht(r,"".concat(p,"-").concat(o)):"play"===n&&ht(r,"".concat(p,"-large")),et(a)&&pt(r,C,a),c.appendChild(r)}}),o.appendChild(c)}else ht(o,k);if(!h.rotatable){var g=o.querySelectorAll('li[class*="rotate"]');ht(g,D),nt(g,function(t){o.appendChild(t)})}if(h.inline)ht(r,x),at(n,{zIndex:h.zIndexInline}),"static"===window.getComputedStyle(i).position&&at(i,{position:"relative"}),i.insertBefore(n,t.nextSibling);else{ht(r,w),ht(n,y),ht(n,b),ht(n,k),at(n,{zIndex:h.zIndex});var v=h.container;$(v)&&(v=t.ownerDocument.querySelector(v)),(v=v||this.body).appendChild(n)}h.inline&&(this.render(),this.bind(),this.isShown=!0),this.ready=!0,et(h.ready)&&pt(t,P,h.ready,{once:!0}),!1!==wt(t,P)?this.ready&&h.inline&&this.view(this.index):this.ready=!1}}}],[{key:"noConflict",value:function(){return window.Viewer=St,e}},{key:"setDefaults",value:function(t){st(s,it(t)&&t)}}]),e}();return st(Ct.prototype,Dt,Tt,Et,It,Ot),Ct});