<!DOCTYPE html>
<!--[if (gt IE 9)|!(IE)]> <!--> <html lang="en" class="no-js edition-domestic"  itemscope xmlns:og="http://opengraphprotocol.org/schema/"> <!--<![endif]-->
<!--[if IE 9]> <html lang="en" class="no-js ie9 lt-ie10 edition-domestic" xmlns:og="http://opengraphprotocol.org/schema/"> <![endif]-->
<!--[if IE 8]> <html lang="en" class="no-js ie8 lt-ie10 lt-ie9 edition-domestic" xmlns:og="http://opengraphprotocol.org/schema/"> <![endif]-->
<!--[if (lt IE 8)]> <html lang="en" class="no-js lt-ie10 lt-ie9 lt-ie8 edition-domestic" xmlns:og="http://opengraphprotocol.org/schema/"> <![endif]-->
<head>
    <title>The New York Times - Breaking News, World News & Multimedia</title>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" /><script type="text/javascript">(window.NREUM||(NREUM={})).loader_config={xpid:"UgMFV1FVGwcDUFdQAQE="};window.NREUM||(NREUM={}),__nr_require=function(t,e,n){function r(n){if(!e[n]){var o=e[n]={exports:{}};t[n][0].call(o.exports,function(e){var o=t[n][1][e];return r(o?o:e)},o,o.exports)}return e[n].exports}if("function"==typeof __nr_require)return __nr_require;for(var o=0;o<n.length;o++)r(n[o]);return r}({1:[function(t,e){function n(t,e,n){n||(n={});for(var r=o[t],a=r&&r.length||0,s=n[i]||(n[i]={}),u=0;a>u;u++)r[u].apply(s,e);return s}function r(t,e){var n=o[t]||(o[t]=[]);n.push(e)}var o={},i="nr@context";e.exports={on:r,emit:n}},{}],2:[function(t){function e(t,e,n,i,s){return u?u-=1:r("err",[s||new UncaughtException(t,e,n)]),"function"==typeof a?a.apply(this,o(arguments)):!1}function UncaughtException(t,e,n){this.message=t||"Uncaught error with no additional information",this.sourceURL=e,this.line=n}function n(t){r("err",[t,(new Date).getTime()])}var r=t("handle"),o=t(6),i=t(5),a=window.onerror,s=!1,u=0;t("loader").features.push("err"),window.onerror=e,NREUM.noticeError=n;try{throw new Error}catch(d){"stack"in d&&(t(1),t(2),"addEventListener"in window&&t(3),window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&t(4),s=!0)}i.on("fn-start",function(){s&&(u+=1)}),i.on("fn-err",function(t,e,r){s&&(this.thrown=!0,n(r))}),i.on("fn-end",function(){s&&!this.thrown&&u>0&&(u-=1)}),i.on("internal-error",function(t){r("ierr",[t,(new Date).getTime(),!0])})},{1:5,2:4,3:3,4:6,5:1,6:14,handle:"D5DuLP",loader:"G9z0Bl"}],3:[function(t){function e(t){r.inPlace(t,["addEventListener","removeEventListener"],"-",n)}function n(t){return t[1]}var r=t(1),o=(t(3),t(2));if(e(window),"getPrototypeOf"in Object){for(var i=document;i&&!i.hasOwnProperty("addEventListener");)i=Object.getPrototypeOf(i);i&&e(i);for(var a=XMLHttpRequest.prototype;a&&!a.hasOwnProperty("addEventListener");)a=Object.getPrototypeOf(a);a&&e(a)}else XMLHttpRequest.prototype.hasOwnProperty("addEventListener")&&e(XMLHttpRequest.prototype);o.on("addEventListener-start",function(t){if(t[1]){var e=t[1];"function"==typeof e?this.wrapped=e["nr@wrapped"]?t[1]=e["nr@wrapped"]:e["nr@wrapped"]=t[1]=r(e,"fn-"):"function"==typeof e.handleEvent&&r.inPlace(e,["handleEvent"],"fn-")}}),o.on("removeEventListener-start",function(t){var e=this.wrapped;e&&(t[1]=e)})},{1:15,2:1,3:14}],4:[function(t){var e=(t(3),t(1)),n=t(2);e.inPlace(window,["requestAnimationFrame","mozRequestAnimationFrame","webkitRequestAnimationFrame","msRequestAnimationFrame"],"raf-"),n.on("raf-start",function(t){t[0]=e(t[0],"fn-")})},{1:15,2:1,3:14}],5:[function(t){function e(t){var e=t[0];"string"==typeof e&&(e=new Function(e)),t[0]=n(e,"fn-")}var n=(t(3),t(1)),r=t(2);n.inPlace(window,["setTimeout","setInterval","setImmediate"],"setTimer-"),r.on("setTimer-start",e)},{1:15,2:1,3:14}],6:[function(t){function e(){o.inPlace(this,s,"fn-")}function n(t,e){o.inPlace(e,["onreadystatechange"],"fn-")}function r(t,e){return e}var o=t(1),i=t(2),a=window.XMLHttpRequest,s=["onload","onerror","onabort","onloadstart","onloadend","onprogress","ontimeout"];window.XMLHttpRequest=function(t){var n=new a(t);try{i.emit("new-xhr",[],n),o.inPlace(n,["addEventListener","removeEventListener"],"-",function(t,e){return e}),n.addEventListener("readystatechange",e,!1)}catch(r){try{i.emit("internal-error",r)}catch(s){}}return n},window.XMLHttpRequest.prototype=a.prototype,o.inPlace(XMLHttpRequest.prototype,["open","send"],"-xhr-",r),i.on("send-xhr-start",n),i.on("open-xhr-start",n)},{1:15,2:1}],7:[function(t){function e(){function e(t){if("string"==typeof t&&t.length)return t.length;if("object"!=typeof t)return void 0;if("undefined"!=typeof ArrayBuffer&&t instanceof ArrayBuffer&&t.byteLength)return t.byteLength;if("undefined"!=typeof Blob&&t instanceof Blob&&t.size)return t.size;if("undefined"!=typeof FormData&&t instanceof FormData)return void 0;try{return JSON.stringify(t).length}catch(e){return void 0}}function n(t){var n=this.params,r=this.metrics;if(!this.ended){this.ended=!0;for(var i=0;u>i;i++)t.removeEventListener(s[i],this.listener,!1);if(!n.aborted){if(r.duration=(new Date).getTime()-this.startTime,4===t.readyState){n.status=t.status;var a=t.responseType,d="arraybuffer"===a||"blob"===a||"json"===a?t.response:t.responseText,f=e(d);if(f&&(r.rxSize=f),this.sameOrigin){var c=t.getResponseHeader("X-NewRelic-App-Data");c&&(n.cat=c.split(", ").pop())}}else n.status=0;r.cbTime=this.cbTime,o("xhr",[n,r])}}}function r(t,e){var n=i(e),r=t.params;r.host=n.hostname+":"+n.port,r.pathname=n.pathname,t.sameOrigin=n.sameOrigin}t("loader").features.push("xhr");var o=t("handle"),i=t(1),a=t(5),s=["load","error","abort","timeout"],u=s.length,d=t(2);t(3),t(4),a.on("new-xhr",function(){this.totalCbs=0,this.called=0,this.cbTime=0,this.end=n,this.ended=!1,this.xhrGuids={}}),a.on("open-xhr-start",function(t){this.params={method:t[0]},r(this,t[1]),this.metrics={}}),a.on("open-xhr-end",function(t,e){"loader_config"in NREUM&&"xpid"in NREUM.loader_config&&this.sameOrigin&&e.setRequestHeader("X-NewRelic-ID",NREUM.loader_config.xpid)}),a.on("send-xhr-start",function(t,n){var r=this.metrics,o=t[0],i=this;if(r&&o){var d=e(o);d&&(r.txSize=d)}this.startTime=(new Date).getTime(),this.listener=function(t){try{"abort"===t.type&&(i.params.aborted=!0),("load"!==t.type||i.called===i.totalCbs&&(i.onloadCalled||"function"!=typeof n.onload))&&i.end(n)}catch(e){try{a.emit("internal-error",e)}catch(r){}}};for(var f=0;u>f;f++)n.addEventListener(s[f],this.listener,!1)}),a.on("xhr-cb-time",function(t,e,n){this.cbTime+=t,e?this.onloadCalled=!0:this.called+=1,this.called!==this.totalCbs||!this.onloadCalled&&"function"==typeof n.onload||this.end(n)}),a.on("xhr-load-added",function(t,e){var n=""+d(t)+!!e;this.xhrGuids&&!this.xhrGuids[n]&&(this.xhrGuids[n]=!0,this.totalCbs+=1)}),a.on("xhr-load-removed",function(t,e){var n=""+d(t)+!!e;this.xhrGuids&&this.xhrGuids[n]&&(delete this.xhrGuids[n],this.totalCbs-=1)}),a.on("addEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-added",[t[1],t[2]],e)}),a.on("removeEventListener-end",function(t,e){e instanceof XMLHttpRequest&&"load"===t[0]&&a.emit("xhr-load-removed",[t[1],t[2]],e)}),a.on("fn-start",function(t,e,n){e instanceof XMLHttpRequest&&("onload"===n&&(this.onload=!0),("load"===(t[0]&&t[0].type)||this.onload)&&(this.xhrCbStart=(new Date).getTime()))}),a.on("fn-end",function(t,e){this.xhrCbStart&&a.emit("xhr-cb-time",[(new Date).getTime()-this.xhrCbStart,this.onload,e],e)})}window.XMLHttpRequest&&XMLHttpRequest.prototype&&XMLHttpRequest.prototype.addEventListener&&!/CriOS/.test(navigator.userAgent)&&e()},{1:8,2:11,3:3,4:6,5:1,handle:"D5DuLP",loader:"G9z0Bl"}],8:[function(t,e){e.exports=function(t){var e=document.createElement("a"),n=window.location,r={};e.href=t,r.port=e.port;var o=e.href.split("://");return!r.port&&o[1]&&(r.port=o[1].split("/")[0].split(":")[1]),r.port&&"0"!==r.port||(r.port="https"===o[0]?"443":"80"),r.hostname=e.hostname||n.hostname,r.pathname=e.pathname,"/"!==r.pathname.charAt(0)&&(r.pathname="/"+r.pathname),r.sameOrigin=!e.hostname||e.hostname===document.domain&&e.port===n.port&&e.protocol===n.protocol,r}},{}],handle:[function(t,e){e.exports=t("D5DuLP")},{}],D5DuLP:[function(t,e){function n(t,e){var n=r[t];return n?n.apply(this,e):(o[t]||(o[t]=[]),void o[t].push(e))}var r={},o={};e.exports=n,n.queues=o,n.handlers=r},{}],11:[function(t,e){function n(t){if(!t||"object"!=typeof t&&"function"!=typeof t)return-1;if(t===window)return 0;if(o.call(t,"__nr"))return t.__nr;try{return Object.defineProperty(t,"__nr",{value:r,writable:!0,enumerable:!1}),r}catch(e){return t.__nr=r,r}finally{r+=1}}var r=1,o=Object.prototype.hasOwnProperty;e.exports=n},{}],loader:[function(t,e){e.exports=t("G9z0Bl")},{}],G9z0Bl:[function(t,e){function n(){var t=p.info=NREUM.info;if(t&&t.agent&&t.licenseKey&&t.applicationID&&u&&u.body){p.proto="https"===c.split(":")[0]||t.sslForHttp?"https://":"http://",a("mark",["onload",i()]);var e=u.createElement("script");e.src=p.proto+t.agent,u.body.appendChild(e)}}function r(){"complete"===u.readyState&&o()}function o(){a("mark",["domContent",i()])}function i(){return(new Date).getTime()}var a=t("handle"),s=window,u=s.document,d="addEventListener",f="attachEvent",c=(""+location).split("?")[0],p=e.exports={offset:i(),origin:c,features:[]};u[d]?(u[d]("DOMContentLoaded",o,!1),s[d]("load",n,!1)):(u[f]("onreadystatechange",r),s[f]("onload",n)),a("mark",["firstbyte",i()])},{handle:"D5DuLP"}],14:[function(t,e){function n(t,e,n){e||(e=0),"undefined"==typeof n&&(n=t?t.length:0);for(var r=-1,o=n-e||0,i=Array(0>o?0:o);++r<o;)i[r]=t[e+r];return i}e.exports=n},{}],15:[function(t,e){function n(t,e,r,s){function nrWrapper(){try{var n,a=u(arguments),d=this,f=r&&r(a,d)||{}}catch(c){i([c,"",[a,d,s],f])}o(e+"start",[a,d,s],f);try{return n=t.apply(d,a)}catch(p){throw o(e+"err",[a,d,p],f),p}finally{o(e+"end",[a,d,n],f)}}return a(t)?t:(e||(e=""),nrWrapper[n.flag]=!0,nrWrapper)}function r(t,e,r,o){r||(r="");var i,s,u,d="-"===r.charAt(0);for(u=0;u<e.length;u++)s=e[u],i=t[s],a(i)||(t[s]=n(i,d?s+r:r,o,s,t))}function o(t,e,n){try{s.emit(t,e,n)}catch(r){i([r,t,e,n])}}function i(t){try{s.emit("internal-error",t)}catch(e){}}function a(t){return!(t&&"function"==typeof t&&t.apply&&!t[n.flag])}var s=t(1),u=t(2);e.exports=n,n.inPlace=r,n.flag="nr@wrapper"},{1:1,2:14}]},{},["G9z0Bl",2,7]);</script>
<link rel="shortcut icon" href="http://static01.nyt.com/favicon.ico" />
<meta name="sourceApp" content="nyt-v5" />
<meta id="foundation-build-id" name="foundation-build-id" content="20140619-223150" />
<link rel="canonical" href="http://www.nytimes.com" />
<link rel="alternate" type="application/rss+xml" title="RSS" href="http://www.nytimes.com/services/xml/rss/nyt/HomePage.xml" />
<link rel="alternate" media="handheld" href="http://mobile.nytimes.com" />
<meta name="robots" content="noarchive,noodp,noydir" />
<meta name="description" content="Find breaking news, multimedia, reviews & opinion on Washington, business, sports, movies, travel, books, jobs, education, real estate, cars & more at nytimes.com." />
<meta name="CG" content="Homepage" />
<meta name="SCG" content="" />
<meta name="PT" content="Homepage" />
<meta name="PST" content="" />
<meta name="application-name" content="The New York Times" />
<meta name="msapplication-starturl" content="http://www.nytimes.com" />
<meta name="msapplication-task" content="name=Search;action-uri=http://query.nytimes.com/search/sitesearch?src=iepin;icon-uri=http://css.nyt.com/images/icons/search.ico" />
<meta name="msapplication-task" content="name=Most Popular;action-uri=http://www.nytimes.com/gst/mostpopular.html?src=iepin;icon-uri=http://css.nyt.com/images/icons/mostpopular.ico" />
<meta name="msapplication-task" content="name=Video;action-uri=http://video.nytimes.com/?src=iepin;icon-uri=http://css.nyt.com/images/icons/video.ico" />
<meta name="msapplication-task" content="name=Homepage;action-uri=http://www.nytimes.com?src=iepin&amp;adxnnl=1;icon-uri=http://css.nyt.com/images/icons/homepage.ico" />
<meta property="og:url" content="http://www.nytimes.com" />
<meta property="og:type" content="website" />
<meta property="og:title" content="Breaking News, World News & Multimedia" />
<meta property="og:description" content="Find breaking news, multimedia, reviews & opinion on Washington, business, sports, movies, travel, books, jobs, education, real estate, cars & more at nytimes.com." />
<meta property="og:image" content="http://static01.nyt.com/images/icons/t_logo_291_black.png" />
<meta property="fb:app_id" content="9869919170" />
<meta name="keywords" content="Appointments and Executive Changes,Supreme Court (US),Obama, Barack,Constitution (US),Abortion,Massachusetts,Supreme Court (US),First Amendment (US Constitution),World Cup 2014 (Soccer),International Federation of Association Football (FIFA),United States Men's National Soccer Team,Stadiums and Arenas,Soccer,World Cup 2014 (Soccer),International Federation of Association Football (FIFA),English Premier League,Suarez, Luis (1987- ),Chiellini, Giorgio,Tabarez, Oscar,Soccer,Islamic State in Iraq and Syria (ISIS),Iraq,Terrorism,Sunni Muslims,Shiite Muslims,Baghdad (Iraq),Muslims and Islam,Bloomberg, Michael R,Obesity,Soft Drinks,Lippman, Jonathan,Baker, Howard H Jr,Tennessee,Senate,Deaths (Obituaries),Republican Party,Reading and Writing Skills (Education),Balanced literacy,Farina, Carmen,New York City,Education (K-12),Sanford, Mark,United States Politics and Government,Elections, House of Representatives,Governors (US),South Carolina,Sanford, Jenny,Chapur, Maria Belen,Adultery,Ukraine,United States International Relations,Embargoes and Sanctions,Kerry, John,Putin, Vladimir V,Fabius, Laurent,France,Rudel, Julius,New York City Opera,Opera,Deaths (Obituaries),Drones (Pilotless Planes),Targeted Killings,United States Defense and Military Forces,Terrorism,United States Politics and Government,Civilian Casualties,Espionage and Intelligence Services,Obama, Barack,Al Qaeda,Central Intelligence Agency,Defense Department,Abizaid, John P,Smith, Jeffrey,Bellinger, John B III,Stimson Center,Bush, George W,Mudd, Philip,Brooks, Rosa,United States International Relations,Terrorism,Othman, Omar Mahmoud Mohammed,Jordan,Great Britain,Decisions and Verdicts,Opium,Poppies,Drug Abuse and Traffic,United Nations,Afghanistan,United States,Marijuana,Cocaine and Crack Cocaine,Methamphetamines,Smuggling,Organized Crime,Jay-Z,Knowles, Beyonce,Music" />
<meta name="video:playerId" content="2640832222001" />
<meta name="video:publisherId" content="1749339200" />
<meta name="video:publisherReadToken" content="cE97ArV7TzqBzkmeRVVhJ8O6GWME2iG_bRvjBTlNb4o." />
    
            <link rel="stylesheet" type="text/css" media="screen" href="http://a1.nyt.com/assets/homepage/20140624-101055/css/foundation/magnum.css" />
<link rel="stylesheet" type="text/css" media="screen" href="http://a1.nyt.com/assets/homepage/20140624-101055/css/homepage/styles.css" />
        <script src="http://a1.nyt.com/assets/homepage/20140624-101055/js/homepage/ad-loader.js"></script>
<script>window.NYTADX.buildAdx(['Appointments and Executive Changes','Supreme Court (US)','Obama, Barack','Constitution (US)','Abortion','Massachusetts','Supreme Court (US)','First Amendment (US Constitution)','World Cup 2014 (Soccer)','International Federation of Association Football (FIFA)','United States Men\'s National Soccer Team','Stadiums and Arenas','Soccer','World Cup 2014 (Soccer)','International Federation of Association Football (FIFA)','English Premier League','Suarez, Luis (1987- )','Chiellini, Giorgio','Tabarez, Oscar','Soccer','Islamic State in Iraq and Syria (ISIS)','Iraq','Terrorism','Sunni Muslims','Shiite Muslims','Baghdad (Iraq)','Muslims and Islam','Bloomberg, Michael R','Obesity','Soft Drinks','Lippman, Jonathan','Baker, Howard H Jr','Tennessee','Senate','Deaths (Obituaries)','Republican Party','Reading and Writing Skills (Education)','Balanced literacy','Farina, Carmen','New York City','Education (K-12)','Sanford, Mark','United States Politics and Government','Elections, House of Representatives','Governors (US)','South Carolina','Sanford, Jenny','Chapur, Maria Belen','Adultery','Ukraine','United States International Relations','Embargoes and Sanctions','Kerry, John','Putin, Vladimir V','Fabius, Laurent','France','Rudel, Julius','New York City Opera','Opera','Deaths (Obituaries)','Drones (Pilotless Planes)','Targeted Killings','United States Defense and Military Forces','Terrorism','United States Politics and Government','Civilian Casualties','Espionage and Intelligence Services','Obama, Barack','Al Qaeda','Central Intelligence Agency','Defense Department','Abizaid, John P','Smith, Jeffrey','Bellinger, John B III','Stimson Center','Bush, George W','Mudd, Philip','Brooks, Rosa','United States International Relations','Terrorism','Othman, Omar Mahmoud Mohammed','Jordan','Great Britain','Decisions and Verdicts','Opium','Poppies','Drug Abuse and Traffic','United Nations','Afghanistan','United States','Marijuana','Cocaine and Crack Cocaine','Methamphetamines','Smuggling','Organized Crime','Jay-Z','Knowles, Beyonce','Music'], '', true)</script>

<script src="//typeface.nytimes.com/zam5nzz.js"></script>
<script>try{Typekit.load();}catch(e){}</script><script>
var require = {
    baseUrl: 'http://a1.nyt.com/assets/',
    waitSeconds: 20,
    paths: {
        'foundation': 'homepage/20140624-101055/js/foundation',
        'shared': 'homepage/20140624-101055/js/shared',
        'homepage': 'homepage/20140624-101055/js/homepage',
        'videoFactory': 'http://static01.nyt.com/js2/build/video/2.0/videofactoryrequire',
        'videoPlaylist': 'http://static01.nyt.com/js2/build/video/players/extended/1.0/appRequire',
        'auth/mtr': 'http://static01.nyt.com/js/mtr',
        'auth/growl': 'http://static01.nyt.com/js/auth/growl/default'
    }
};
</script>
<!--[if (gte IE 9)|!(IE)]> <!-->
<script data-main="foundation/main" src="http://a1.nyt.com/assets/homepage/20140624-101055/js/foundation/lib/framework.js"></script>
<!--<![endif]-->
<!--[if lt IE 9]>
<script>
require.map = { '*': { 'foundation/main': 'foundation/legacy_main' } };
</script>
<script data-main="foundation/legacy_main" src="http://a1.nyt.com/assets/homepage/20140624-101055/js/foundation/lib/framework.js"></script>
<![endif]-->
<script>
window.magnum.processFlags(["testFlag-On"]);
</script>
</head>
<body>
    <div id="InterstitialContainer" class="interstitial-container hidden">
    <h6 class="branding">
    <svg class="nyt-logo" width="379" height="64" role="img" aria-label="The New York Times">
        <image width="379" height="64" xlink:href="http://a1.nyt.com/assets/homepage/20140624-101055/images/foundation/logos/nyt-logo-379x64.svg" src="http://a1.nyt.com/assets/homepage/20140624-101055/images/foundation/logos/nyt-logo-379x64.png" alt="The New York Times" border="0"/>
    </svg>

</h6>
    <button type="button" class="dismiss-button">Skip this ad &raquo;</button>
    <div id="Interstitial" class="ad interstitial-ad"></div>
    <p class="advertising-slug">Advertisement</p>
</div>

<script>
    if (window.NYTADX) {
        if (window.NYTADX.buildInterstitialAd) {
            window.NYTADX.buildInterstitialAd();
        }

        if (window.NYTADX.inactivityTimer) {
            window.NYTADX.inactivityTimer.init();
        }
    }
</script>

    <style>
    .lt-ie9 .messenger.suggestions {
        display: block !important;
        height: 50px;
    }

    .lt-ie9 .messenger.suggestions .message-bed {
        background-color: #f8e9d2;
        border-bottom: 1px solid #ccc;
    }

    .lt-ie9 .messenger.suggestions .message-container {
        padding: 11px 18px 11px 30px;
    }

    .lt-ie9 .messenger.suggestions .action-link {
        font-family: "nyt-franklin", arial, helvetica, sans-serif;
        font-size: 10px;
        font-weight: bold;
        color: #a81817;
        text-transform: uppercase;
    }

    .lt-ie9 .messenger.suggestions .alert-icon {
        background: url('http://i1.nyt.com/images/icons/icon-alert-12x12-a81817.png') no-repeat;
        width: 12px;
        height: 12px;
        display: inline-block;
        margin-top: -2px;
        float: none;
    }

    .lt-ie9 .masthead,
    .lt-ie9 .navigation,
    .lt-ie9 .comments-panel {
        margin-top: 50px !important;
    }

    .lt-ie9 .ribbon {
        margin-top: 97px !important;
    }
</style>
<div id="suggestions" class="suggestions messenger" style="display:none;">
    <div class="message-bed">
        <div class="message-container last-message-container">
            <div class="message">
                <span class="message-content">
                    <i class="icon alert-icon"></i><span class="message-title">NYTimes.com no longer supports Internet Explorer 8 or earlier. Please upgrade your browser.</span>
                    <a href="http://www.nytimes.com/content/help/site/ie8-support.html" class="action-link">LEARN MORE »</a>
                </span>
            </div>
        </div>
    </div>
</div>
    <div id="shell" class="shell">
    <header id="masthead" class="masthead" role="banner">

    <div id="announcements-container" class="announcements-container"></div>

    <div id="Header1" class="ad header1-ad"></div>

    <div class="masthead-cap-container">

        <div id="masthead-cap" class="masthead-cap">

            <div class="quick-navigation button-group">

                <button class="button sections-button">
                    <i class="icon"></i><span class="button-text">Sections</span>
                </button>
                <button class="button search-button">
                    <i class="icon"></i><span class="button-text">Search</span>
                </button>
                <a class="button skip-button skip-to-content visually-hidden focusable" href="#top-news">Skip to content</a>
                <a class="button skip-button skip-to-navigation visually-hidden focusable" href="#site-index-navigation">Skip to navigation</a>
            </div><!-- close quick-navigation -->

            <div class="user-tools">

                <div id="Bar1" class="ad user-subscriptions"></div>

                <div class="user-tools-button-group button-group">
                    <button class="button login-button login-modal-trigger hidden">Log In</button><button class="button user-settings-button">
                        <i class="icon"></i><span class="button-text">Settings</span>
                    </button>
                </div>

            </div><!-- close user-tools -->

        </div><!-- close masthead-cap -->

    </div><!-- close masthead-cap-container -->

    <div class="masthead-meta">

        <div class="editions tab">

            <ul class="editions-menu">
                                    <li class="edition-domestic-toggle active">U.S.</li>
                    <li class="edition-international-toggle"><a href="http://international.nytimes.com" data-edition="global">International</a></li>
                
                <li class="edition-chinese-toggle"><a href="http://cn.nytimes.com" target="_blank" data-edition="chinese">中文</a></li>
            </ul>

        </div><!-- close editions -->

        <div id="TopLeft" class="ad top-left-ad"></div>
        <div id="TopRight" class="ad top-right-ad"></div>

        <h2 class="branding">
    <svg class="nyt-logo" width="379" height="64" role="img" aria-label="The New York Times">
        <image width="379" height="64" xlink:href="http://a1.nyt.com/assets/homepage/20140624-101055/images/foundation/logos/nyt-logo-379x64.svg" src="http://a1.nyt.com/assets/homepage/20140624-101055/images/foundation/logos/nyt-logo-379x64.png" alt="The New York Times" border="0"/>
    </svg>

</h2>

        <ul class="masthead-menu">
            <li class="date">Thursday, June 26, 2014</li><li class="todays-paper"><a href="http://www.nytimes.com/pages/todayspaper/index.html"><i class="icon"></i>Today’s Paper</a></li><li class="weather"><a href="http://www.nytimes.com/weather">Personalize Your Weather</a></li>
        </ul>

    </div><!-- close masthead-meta -->

    <nav id="mini-navigation" class="mini-navigation">

    <button class="button all-sections-button">All Sections</button>

    <ul class="mini-navigation-menu">

        <li>
            <button class="button sections-button">
                <i class="icon"></i>
                <span class="button-text">Sections</span>
            </button>
        </li><li>
            <button class="button search-button">
                <i class="icon"></i>
                <span class="button-text">Search</span>
            </button>
        </li><li class="shortcuts-9a43d8fc-f4cf-44d9-9b34-138d30468f8f">
                    <a href="http://www.nytimes.com/pages/world/index.html">World</a>
                </li><li class="shortcuts-23fd6c8b-62d5-4cea-a331-6c2a9a1223be">
                    <a href="http://www.nytimes.com/pages/national/index.html">U.S.</a>
                </li><li class="shortcuts-c4dc8c0c-e148-4201-bf10-82f1c903dbfb">
                    <a href="http://www.nytimes.com/pages/nyregion/index.html">New York</a>
                </li><li class="shortcuts-ad8090d7-4137-4d71-84c8-70da3bd89778">
                    <a href="http://www.nytimes.com/pages/opinion/index.html">Opinion</a>
                </li><li class="shortcuts-104d1e63-9701-497b-8cf4-a4d120c9014e">
                    <a href="http://www.nytimes.com/pages/business/index.html">Business</a>
                </li><li class="shortcuts-78fbad45-31a9-4ec7-b172-7d62a2b9955e">
                    <a href="http://www.nytimes.com/pages/technology/index.html">Technology</a>
                </li><li class="shortcuts-a4b35924-db6c-4ea3-997d-450810f4fee6">
                    <a href="http://www.nytimes.com/pages/science/index.html">Science</a>
                </li><li class="shortcuts-7d6be1af-8cd8-430b-8b2a-17cd0eaa99ac">
                    <a href="http://www.nytimes.com/pages/health/index.html">Health</a>
                </li><li class="shortcuts-de2b278b-2783-4506-aad5-c15a5bb6da1a">
                    <a href="http://www.nytimes.com/pages/sports/index.html">Sports</a>
                </li><li class="shortcuts-c5bfa7d5-359c-427b-90e6-6b7245a6cdd8">
                    <a href="http://www.nytimes.com/pages/arts/index.html">Arts</a>
                </li><li class="shortcuts-b3dfbd82-f298-43b3-9458-219b4f6aa2a5">
                    <a href="http://www.nytimes.com/pages/fashion/index.html">Fashion & Style</a>
                </li><li class="shortcuts-3300eb4c-284f-4484-af31-0d7d1dba4f4c">
                    <a href="http://www.nytimes.com/crosswords/">Crosswords</a>
                </li><li class="shortcuts-99c17804-a343-4a76-bf04-f5793ada48d1">
                    <a href="http://www.nytimes.com/times-insider">Times Premier</a>
                </li><li class="shortcuts-432a1823-3f24-43c0-8004-79088f94e754">
                    <a href="http://www.nytimes.com/video/">Video</a>
                </li>
    </ul>

</nav>
    <div class="search-flyout-panel flyout-panel">
    <button class="button close-button" type="button"><i class="icon"></i><span class="visually-hidden">Close search</span></button>
    <div class="ad">
        <small class="ad-sponsor">search sponsored by</small>
        <div id="SponsorAd" class="sponsor-ad"></div>
    </div>
    <nav class="search-form-control form-control layout-horizontal">
    <form class="search-form" role="search">
        <div class="control">
            <div class="label-container visually-hidden">
                                <label for="search-input">Search NYTimes.com</label>
                            </div>
            <div class="field-container">
                                <input id="search-input" name="search-input" type="text" class="search-input text" autocomplete="off" placeholder="Search NYTimes.com" />
                
                <button type="button" class="button clear-button" tabindex="-1" aria-describedby="clear-search-input"><i class="icon"></i><span id="clear-search-input" class="visually-hidden">Clear this text input</span></button>
                <div class="auto-suggest" style="display: none;">
                    <ol></ol>
                </div>
                <button class="button submit-button" type="submit">Go</button>
            </div>
        </div><!-- close control -->
    </form>
</nav>


</div><!-- close flyout-panel -->

</header><!-- close masthead -->
<div id="masthead-placeholder" class="masthead-placeholder"></div>
                    <nav id="navigation" class="navigation"></nav>
<nav id="navigation-modal" class="navigation-modal"></nav>
    <main id="main" class="main" role="main">
            <div id="TopAd" class="ad top-ad"></div>
    <div id="Top" class="ad hp-top-ad hidden"></div>
<div id="Top5" class="ad top5-ad"></div>

    <div class="span-abc-region region">
        <div class="collection">
        <style>

/* Hiding Hacks */

.nythpHideKickers .kicker, .nythpHideBylines .byline, .nythpHideTimestamps .timestamp {
    display: none;
}




/* World Cup Flags */
.wc-flag {
    background-color: #DDD;
    margin: 0 5px 0 0;
    height: 15px;
    width: 20px;
}

.wc-flag {
  border: none; 
  background-image: url(http://graphics8.nytimes.com/packages/images/sports/wc-2014/sprite_flags.gif);
  background-repeat: no-repeat;
  background-position: 0 11px;
  width: 16px;
  height: 11px;
  display: inline-block;
  
}

.wc-flag.away {
    margin: 0 0 0 5px;
}

.wc-flag.TBD {
  display: none !important;
}

.wc-flag.BRAZIL {background-position: 0 -336px;}
.wc-flag.CROATIA {background-position: 0 -1188px;}
.wc-flag.MEXICO {background-position: 0 -1861px;}
.wc-flag.CAMEROON {background-position: 0 -540px;}

.wc-flag.SPAIN {background-position: 0 -816px;}
.wc-flag.CHILE {background-position: 0 -528px;}
.wc-flag.ARGENTINA {background-position: 0 -108px;}
.wc-flag.AUSTRALIA {background-position: 0 -144px;}

.wc-flag.COLOMBIA {background-position: 0 -564px;}
.wc-flag.IVORY-COAST {background-position: 0 -504px;}
.wc-flag.GREECE {background-position: 0 -1080px;}
.wc-flag.JAPAN {background-position: 0 -1356px;}

.wc-flag.URUGUAY {background-position: -28px -780px;}
.wc-flag.ENGLAND {background-position: 0 -792px;}
.wc-flag.ITALY {background-position: 0 -1320px;}
.wc-flag.COSTA-RICA {background-position: 0 -576px;}

.wc-flag.FRANCE {background-position: 0 -924px;}
.wc-flag.ECUADOR {background-position: 0 -744px;}
.wc-flag.SWITZERLAND {background-position: 2px -492px;background-color: transparent;} 
.wc-flag.HONDURAS {background-position: 0 -1176px;}

.wc-flag.ARGENTINA {background-position: 0 -108px;}
.wc-flag.BOSNIA-AND-HERZEGOVINA,.wc-flag.BOSNIA {background-position: 0 -192px;}
.wc-flag.NIGERIA {background-position: 0 -1945px;}
.wc-flag.IRAN {background-position: 0 -1296px;}

.wc-flag.GERMANY {background-position: 0 -672px;}
.wc-flag.PORTUGAL {background-position: -28px -180px;}
.wc-flag.UNITED-STATES,.wc-flag.USA {background-position: -28px -768px;}
.wc-flag.GHANA {background-position: 0 -996px;}

.wc-flag.BELGIUM {background-position: 0 -228px;}
.wc-flag.RUSSIA {background-position: -28px -264px;}
.wc-flag.ALGERIA {background-position: 0 -732px;}
.wc-flag.SOUTH-KOREA {background-position: 0 -1452px;}

.wc-flag.NETHERLANDS {background-position: 0 -1969px;}
.wc-flag.SOUTH-AFRICA {background-position: -28px -960px;} 

</style>
<!-- 

Thank you and congratulations:


Web Products
Moustafa Makboul
Jessica Kosturko
Lorenzo Pierfelice
Jim Lamiell
Megan Araula
Steve Rickert
Clint Fisher
Adam Falk
Justin Whittle
Jon Oden
Eitan Konigsburg
Reed Emmons
Mike Finkel
Tess Salalac
Erin Grau

Newsroom
Ariane Bernard
Nathan Ashby-Kuhlman
Ham Boardman
Nic Barajas

Scoop
Greg Litkey
Shanid Seerae-valappil
Jessica Chen
Luke Vnenchak
Daniel Bickett
Konstantin Chukhlomin
Mike Dzuzelewski 

Design
Renda Morton
Libby Gery
Allen Tan
Claire Lin
Peter Rentz

Networking
Alex Castro
Christian Liendo
Andrew Yudin

Infrastructure
Larry Gohar 
Yujin Kim

Systems
Mahantesh Patil
Abhishek Neralla
Vincent Manapat

Advertising
Rachael Savage
Sasha Heroy
Michelle Dennis
Owen Duffy
Jessica Torok
Lucas Potocki



--><style>
.span-ab-top-region .story.theme-summary .story-heading {font-size: 2rem; line-height: 2.1rem; }
.tr-gdi .span-ab-top-region .story.theme-summary .story-heading { font-size: 24px; }

</style></div>    </div><!-- close span-abc-region -->

<div class="span-ab-layout layout">

    <div class="ab-column column">

        <section id="top-news" class="top-news">
            <h2 class="section-heading visually-hidden">Top News</h2>

            
            
            
            <div class="wide-b-layout layout">

                <div class="a-column column">

                    <div class="first-column-region region">

                        <div class="collection">
        <article class="story theme-summary lede" data-story-id="100000002833469" data-rank="0" data-collection-renderstyle="LedeSum">
    
        <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/27/us/supreme-court-president-recess-appointments.html">Justices Limit Presidential Power in Recess Appointments</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
    <p class="byline">By ADAM LIPTAK <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="12:41 PM" data-utc-timestamp="1403800914">12:41 PM ET</time></p>
    <p class="summary">The Supreme Court on Thursday dealt a significant blow to executive power, cutting back on the president’s power to issue recess appointments during brief breaks in the Senate’s work.</p>

		    <p class="theme-comments">
    <a href="http://www.nytimes.com/2014/06/27/us/supreme-court-president-recess-appointments.html?hp&amp;target=comments#commentsContainer" class="comments-link"><i class="icon comments-icon"></i><span class="comment-count hidden"></span>&nbsp;Comments</a>
</p>
	
	    <ul class="refer theme-news-headlines">
            <li>
            <article class="story">
                <h2 class="refer-heading"><a href="http://www.nytimes.com/2014/06/27/us/impact-of-the-courts-ruling-on-recess-appointments.html">Impact of the Ruling</a> <span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
            </article>
        </li>
        </ul>
</article>


</div><div class="collection">
        <article class="story theme-summary" data-story-id="100000002833446" data-rank="0" data-collection-renderstyle="HpSum">
    
        <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/27/us/supreme-court-abortion-clinic-protests.html">Court Strikes Down
Abortion Clinic
Buffer Zones</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
    <p class="byline">By ADAM LIPTAK <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="12:26 PM" data-utc-timestamp="1403800006">12:26 PM ET</time></p>
    <p class="summary">The unanimous decision struck down a Massachusetts law enacted in 2007 that created 35-foot buffer zones around entrances to abortion clinics.</p>

		    <p class="theme-comments">
    <a href="http://www.nytimes.com/2014/06/27/us/supreme-court-abortion-clinic-protests.html?hp&amp;target=comments#commentsContainer" class="comments-link"><i class="icon comments-icon"></i><span class="comment-count hidden"></span>&nbsp;Comments</a>
</p>
	
	</article>

<hr class="single-rule" />
</div>                                                <div class="collection">
        <article class="story theme-summary" data-story-id="100000002962767" data-rank="0" data-collection-renderstyle="HpSum">
    
        <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/26/world/middleeast/shiite-violence-traps-sunnis-in-baghdad.html">Shiite Violence Traps Sunnis in Baghdad </a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
    <p class="byline">By ALISSA J. RUBIN and ROD NORDLAND </p>
    <p class="summary">Sunnis fear that walls built by the Americans to protect them could also entrap them, making them easy prey for emboldened Shiite militias who executed Sunnis in large numbers not many years ago.</p>

		    <p class="theme-comments">
    <a href="http://www.nytimes.com/2014/06/26/world/middleeast/shiite-violence-traps-sunnis-in-baghdad.html?hp&amp;target=comments#commentsContainer" class="comments-link"><i class="icon comments-icon"></i><span class="comment-count hidden"></span>&nbsp;Comments</a>
</p>
	
	    <ul class="refer theme-news-headlines">
            <li>
            <article class="story">
                <h2 class="refer-heading"><a href="http://www.nytimes.com/2014/06/27/world/middleeast/iraqi-parliament-to-meet-to-form-new-government.html">Iraqi Parliament to Meet to Form New Government</a> <span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
            </article>
        </li>
        </ul>
</article>

<hr class="single-rule" />
</div><div class="collection">
        <article class="story theme-summary" data-story-id="100000002965027" data-rank="0" data-collection-renderstyle="HpSumSmallMedia">
    
        <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/27/nyregion/city-loses-final-appeal-on-limiting-sales-of-large-sodas.html">City Loses Final Appeal on Limiting Sales of Large Sodas</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
    <p class="byline">By MICHAEL M. GRYNBAUM <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="10:18 AM" data-utc-timestamp="1403792295">10:18 AM ET</time></p>

            <div class="thumb">
            <a href="http://www.nytimes.com/2014/06/27/nyregion/city-loses-final-appeal-on-limiting-sales-of-large-sodas.html"><img src="http://static01.nyt.com/images/2014/06/27/nyregion/SODAweb/SODAweb-thumbStandard.jpg" alt=""></a>
        </div>
    
    <p class="summary">
        The State Court of Appeals has refused to reinstate New York City’s limits on sales of jumbo sugary drinks, an effort that was championed by former Mayor Michael R. Bloomberg.    </p>

            <p class="theme-comments">
    <a href="http://www.nytimes.com/2014/06/27/nyregion/city-loses-final-appeal-on-limiting-sales-of-large-sodas.html?hp&amp;target=comments#commentsContainer" class="comments-link"><i class="icon comments-icon"></i><span class="comment-count hidden"></span>&nbsp;Comments</a>
</p>
    
    </article>

<hr class="single-rule" />
</div>                        <div class="collection headlines">
			<h3 class="kicker collection-kicker">On the Blogs</h3>
	    <ul class="theme-news-headlines">
                    <li>
            <article class="story" data-story-id="100000002965724" data-rank="0" data-collection-renderstyle="HpBlogHeadline">
        <h2 class="story-heading"><i class="icon"></i><a href="http://bits.blogs.nytimes.com/2014/06/26/googles-grand-plans-a-conversation-with-googles-larry-page-and-sundar-pichai/">Bits: Q&A With Google’s Larry Page and Sundar Pichai</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</div>
                    </div><!-- close first-column-region -->

                </div><!-- close a-column -->

                <div class="b-column column">

                                            <div class="photo-spot-region region">

                            <div class="collection">
        <style type="text/css">

.nythpWorldCupHeader {
  margin-bottom: 8px;
}

.nythpWorldCupHeader h6 {
  font-family: "nyt-karnak-display","nyt-karnak-display-130124";
  font-size: 14px;
  border-bottom: 1px solid #00A859;
  letter-spacing: .5px;
}

.nythpWorldCupHeader h6 a {
  text-decoration: none;
  color: #000;
}

.nythpWorldCupHeader h6:hover,
.nythpWorldCupHeader h6:active {
  border-color: #000;
}

.nythpWorldCupHeader h6 a, 
.nythpWorldCupHeader h6 a:visited  {
  text-decoration: none;
  color: #000;
}

#home #spanABTopRegion .nythpWorldCupHeader, .span-ab-top-region .nythpWorldCupHeader, #home #spanABLedePackage .nythpWorldCupHeader, #home .wideB .bColumn .nythpWorldCupHeader, .wideA .aColumn .nythpWorldCupHeader, .b-column .nythpWorldCupHeader {
  text-align: center;
}

#home #spanABTopRegion .nythpWorldCupHeader h6, .span-ab-top-region .nythpWorldCupHeader h6, #home #spanABLedePackage .nythpWorldCupHeader h6, #home .wideB .bColumn .nythpWorldCupHeader h6, .wideA .aColumn .nythpWorldCupHeader h6, .b-column .nythpWorldCupHeader h6 {
  display: inline-block;
  margin: 0 auto;
  padding: 0 8px;
}

.b-column .split-layout .nythpWorldCupHeader { text-align: left;}

.b-column .split-layout .nythpWorldCupHeader h6 {   
	display: block;
	margin: 0;
	padding: 0;
}
</style>

<div class="nythpWorldCupHeader">
  <h6><a href="http://www.nytimes.com/sports/worldcup/">World Cup 2014</a></h6>
</div><article class="story theme-summary lede" data-story-id="100000002965209" data-rank="1" data-collection-renderstyle="LargeMediaHeadlineSum">
    
    <figure class="media slideshow in-page-player lede embedded" data-media-action="inline" aria-label="media" role="group" data-crop="largeHorizontal375">
        <span class="visually-hidden">Slide Show</span>
    <script type="application/json">
    {"headline":"United States vs. Germany","content_kicker":"","section_name":"sports","subsection_name":"","publication_date":1403755200,"id":100000002965436,"imageslideshow":{"slides":[{"data_id":100000002965991,"image_type":"photo","caption":{"full":"<p>U.S. players acknowledged their fans.<\/p>","short":"U.S. players acknowledged their fans at the end of the game."},"credit":"Laszlo Balogh\/Reuters","image_crops":{"largeHorizontal375":{"height":250,"width":375,"url":"http:\/\/static01.nyt.com\/images\/2014\/06\/26\/sports\/20140626FIFA-slide-W4L4\/20140626FIFA-slide-W4L4-largeHorizontal375.jpg"}}},{"data_id":100000002965994,"image_type":"photo","caption":{"full":"<p>Germany&#8217;s Thomas Mueller, left, with Kyle Beckerman of the U.S. at the end of the game.<\/p>","short":"Germany's Thomas Muller, left, with Kyle Beckerman of the U.S."},"credit":"Brian Snyder\/Reuters","image_crops":{"largeHorizontal375":{"height":250,"width":375,"url":"http:\/\/static01.nyt.com\/images\/2014\/06\/26\/sports\/20140626FIFA-slide-9ZWM\/20140626FIFA-slide-9ZWM-largeHorizontal375.jpg"}}},{"data_id":100000002965920,"image_type":"photo","caption":{"full":"<p>Germany&#8217;s Thomas Muller with teammates after he scored.<\/p>","short":"Germany's Thomas Muller with teammates after he scored."},"credit":"Petr David Josek\/Associated Press","image_crops":{"largeHorizontal375":{"height":250,"width":375,"url":"http:\/\/static01.nyt.com\/images\/2014\/06\/26\/sports\/20140626FIFA-slide-ABF7\/20140626FIFA-slide-ABF7-largeHorizontal375.jpg"}}},{"data_id":100000002965644,"image_type":"photo","caption":{"full":"<p>Fabian Johnson of the U.S. was challenged by Germany.<\/p>","short":"Fabian Johnson of the U.S. was challenged by Germany."},"credit":"Laszlo Balogh\/Reuters","image_crops":{"largeHorizontal375":{"height":250,"width":375,"url":"http:\/\/static01.nyt.com\/images\/2014\/06\/26\/sports\/20140626FIFA-slide-XQ1K\/20140626FIFA-slide-XQ1K-largeHorizontal375.jpg"}}},{"data_id":100000002965755,"image_type":"photo","caption":{"full":"<p>Jurgen Klinsmann, the U.S. coach.<\/p>","short":"Jurgen Klinsmann, the U.S. coach."},"credit":"Ruben Sprich\/Reuters","image_crops":{"largeHorizontal375":{"height":250,"width":375,"url":"http:\/\/static01.nyt.com\/images\/2014\/06\/26\/sports\/20140626FIFA-slide-YQUB\/20140626FIFA-slide-YQUB-largeHorizontal375.jpg"}}},{"data_id":100000002965884,"image_type":"photo","caption":{"full":"<p>Mueller, center, with Kyle Beckerman, left, and Matt Besler.<\/p>","short":"Mueller, center, with Kyle Beckerman, left, and Matt Besler."},"credit":"Laszlo Balogh\/Reuters","image_crops":{"largeHorizontal375":{"height":250,"width":375,"url":"http:\/\/static01.nyt.com\/images\/2014\/06\/26\/sports\/20140626FIFA-slide-9KQN\/20140626FIFA-slide-9KQN-largeHorizontal375.jpg"}}},{"data_id":100000002965613,"image_type":"photo","caption":{"full":"<p>U.S. fans before the start of the game.<\/p>","short":"U.S. fans before the start of the game."},"credit":"Tony Gentile\/Reuters","image_crops":{"largeHorizontal375":{"height":250,"width":375,"url":"http:\/\/static01.nyt.com\/images\/2014\/06\/26\/sports\/20140626FIFA-slide-VX90\/20140626FIFA-slide-VX90-largeHorizontal375.jpg"}}},{"data_id":100000002965754,"image_type":"photo","caption":{"full":"<p>Omar Gonzalez of the United States jumped for the ball.<\/p>","short":"Omar Gonzalez of the United States jumps for the ball."},"credit":"Tony Gentile\/Reuters","image_crops":{"largeHorizontal375":{"height":250,"width":375,"url":"http:\/\/static01.nyt.com\/images\/2014\/06\/26\/sports\/20140626FIFA-slide-00VK\/20140626FIFA-slide-00VK-largeHorizontal375.jpg"}}},{"data_id":100000002965550,"image_type":"photo","caption":{"full":"<p>DaMarcus Beasley, left, of the U.S. and Germany&#8217;s Mesut Oezil.<\/p>","short":"DaMarcus Beasley, left, of the U.S. and Germany's Mesut Oezil."},"credit":"Srdjan Suki\/European Pressphoto Agency","image_crops":{"largeHorizontal375":{"height":250,"width":375,"url":"http:\/\/static01.nyt.com\/images\/2014\/06\/26\/sports\/20140626FIFA-slide-0L9E\/20140626FIFA-slide-0L9E-largeHorizontal375.jpg"}}},{"data_id":100000002965496,"image_type":"photo","caption":{"full":"<p>Fans arrived at the stadium.<\/p>","short":"Fans arrived at the stadium before the game."},"credit":"Nelson Almeida\/Agence France-Presse \u2014 Getty Images","image_crops":{"largeHorizontal375":{"height":250,"width":375,"url":"http:\/\/static01.nyt.com\/images\/2014\/06\/26\/sports\/20140626FIFA-slide-C2GS\/20140626FIFA-slide-C2GS-largeHorizontal375.jpg"}}},{"data_id":100000002965501,"image_type":"photo","caption":{"full":"<p>A U.S. fan in the rain.<\/p>","short":"A U.S. fan in the rain."},"credit":"Martin Rose\/Getty Images","image_crops":{"largeHorizontal375":{"height":250,"width":375,"url":"http:\/\/static01.nyt.com\/images\/2014\/06\/26\/sports\/20140626FIFA-slide-NOTQ\/20140626FIFA-slide-NOTQ-largeHorizontal375.jpg"}}},{"data_id":100000002965215,"image_type":"photo","caption":{"full":"<p>A FIFA official as rain poured down before the game.<\/p>","short":"A FIFA official as rain poured down before the game."},"credit":"Matthias Schrader\/Associated Press","image_crops":{"largeHorizontal375":{"height":250,"width":375,"url":"http:\/\/static01.nyt.com\/images\/2014\/06\/27\/sports\/27FIFA\/27FIFA-largeHorizontal375.jpg"}}}]}}    </script>
            <div class="loader-container">
            <div class="loader"><span class="visually-hidden">Loading...</span></div>
        </div>
    </figure>

            <h3 class="kicker">Germany 1, United States 0 </h3>
        <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/27/sports/worldcup/world-cup-2014-us-germany-recife-brazil.html">U.S. Moves On With Assist From Portugal</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>

            <p class="byline">By SAM BORDEN <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="2:05 PM" data-utc-timestamp="1403805944">2:05 PM ET</time></p>
    
    <p class="summary">Germany beat the United States to win Group G, but the Americans advanced to the knockout stages after Portugal defeated Ghana. The U.S. will likely face Belgium next.</p>

            <p class="theme-comments">
    <a href="http://www.nytimes.com/2014/06/27/sports/worldcup/world-cup-2014-us-germany-recife-brazil.html?hp&amp;target=comments#commentsContainer" class="comments-link"><i class="icon comments-icon"></i><span class="comment-count hidden"></span>&nbsp;Comments</a>
</p>
    
        <ul class="refer theme-news-headlines">
            <li>
            <article class="story">
                <h2 class="refer-heading"><a href="http://www.nytimes.com/interactive/2014/06/26/sports/worldcup/world-cup-portugal-vs-ghana.html">Portugal Defeats Ghana, but Neither Advances</a> <span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
            </article>
        </li>
        </ul>
</article>


</div><div class="collection">
        <article class="story theme-summary" data-story-id="100000002965169" data-rank="0" data-collection-renderstyle="HpSumSmallMediaHigh">
    
        <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/27/sports/worldcup/world-cup-2014-suarez-barred-by-fifa-for-latest-bite.html">Ouch! Bite Gets Suárez Barred for 4 Months</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>

            <div class="thumb">
            <a href="http://www.nytimes.com/2014/06/27/sports/worldcup/world-cup-2014-suarez-barred-by-fifa-for-latest-bite.html"><img src="http://static01.nyt.com/images/2014/06/27/sports/27suarez/27suarez-thumbStandard.jpg" alt=""></a>
        </div>
    
    <p class="byline">By SAM BORDEN <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="11:44 AM" data-utc-timestamp="1403797487">11:44 AM ET</time></p>
    <p class="summary">
        The Uruguay striker Luis Suárez will miss the rest of the World Cup and the start of the English Premier League season.    </p>

            <p class="theme-comments">
    <a href="http://www.nytimes.com/2014/06/27/sports/worldcup/world-cup-2014-suarez-barred-by-fifa-for-latest-bite.html?hp&amp;target=comments#commentsContainer" class="comments-link"><i class="icon comments-icon"></i><span class="comment-count hidden"></span>&nbsp;Comments</a>
</p>
    
    </article>
</div><div class="collection">
        <style>

   .nythpWorldCupFooter {
		height: 50px;
   }

    .nythpWorldCupFooter, .nythpWorldCupFooter h5, .nythpWorldCupFooter h6  {
        font-family: "nyt-franklin",helvetica,arial,sans-serif;
        font-weight: 500;
        text-align: center;
    }
    
    .nythpWorldCupFooter h5 {
        font-size: 12px;
        display: inline-block;
        padding: 0 4px;
    }

    .nythpWorldCupFooter .singleRuleDivider, .nythpWorldCupFooter .single-rule {
        width: 50%;
        margin: 12px auto;
    }

    #nythpWCAppsPromoText {
        font-size: 11px;
    }
        
    .nythpWorldCupFooter a,
    .nythpWorldCupFooter a:visited,
    .nythpWorldCupFooter a:hover,
    .nythpWorldCupFooter a:active {
        color: #909090;
        text-decoration: none;
    }
    
    .nythpWorldCupFooter a strong,     
    .nythpWorldCupFooterLeft h5 a,
    .nythpWorldCupFooterLeft h5 a:visited,
    .nythpWorldCupFooterLeft h5 a:hover,
    .nythpWorldCupFooterLeft h5 a:active  {
        display: inline-block;
        font-weight: 500;
        color: #326891;
    }
    
    .nythpWorldCupFooter a:hover strong, .nythpWorldCupFooterLeft h5 a:hover {
        text-decoration: underline;
    }
    
    .nythpWorldCupFooterLeft, .nythpWorldCupFooterRight {
        width: 177px; 
        float: left;
        margin-bottom: 8px;
    }

    .nythpWorldCupFooterLeft {
        border-right: 1px solid #ccc;
        padding-right: 11px;
    }

    .nythpWorldCupFooterRight {
        padding-left: 8px;
    }

    .nythpWorldCupFooter .icon {
        position: relative;
        top: -1px;
        padding-top: 1px;
        padding-left: 12px;
        line-height: 11px;
        background-repeat: no-repeat;
    }
    
    .nythpWorldCupFooter .appIcon {
        background-image: url('http://graphics8.nytimes.com/packages/images/nytdesign/2014/olympics/homepage/icons/icon-media-apps-12x12-6389A5.gif');
    }
        
    .nythpWorldCupFooter a:hover .appIcon {
        background-image: url('http://graphics8.nytimes.com/packages/images/nytdesign/2014/olympics/homepage/icons/icon-media-apps-12x12-326891.gif');
    }
        
    .nythpWorldCupFooter .twitterIcon {
        background-image: url('http://graphics8.nytimes.com/packages/images/nytdesign/2014/olympics/homepage/icons/icon-media-twitter-12x12-6389A5.gif');
    }
            
    .nythpWorldCupFooter a:hover .twitterIcon {
        background-image: url('http://graphics8.nytimes.com/packages/images/nytdesign/2014/olympics/homepage/icons/icon-media-twitter-12x12-326891.gif');
    }

    .nythpWorldCupFooter .emailIcon {
        padding-left: 16px !important;
        background-image: url('http://graphics8.nytimes.com/packages/images/nytdesign/2014/olympics/homepage/icons/icon-media-email-alert-12x12-6389A5.gif');
    }

    .nythpWorldCupFooter a:hover .emailIcon {
        background-image: url('http://graphics8.nytimes.com/packages/images/nytdesign/2014/olympics/homepage/icons/icon-media-email-alert-12x12-326891.gif');
    }

    #sochi-hub .nytDesignSochiEmail p {
        font-family: "nyt-franklin",helvetica,arial,sans-serif !important;
        font-size: 12px !important;
        font-weight: 500 !important;
    }

    .NYT5Style .nythpWorldCupFooter hr.single-rule, .edition-international .nythpWorldCupFooter .singleRuleDivider, .edition-domestic .nythpWorldCupFooter .singleRuleDivider { display: none; }  

    
        
</style>
<div class="nythpWorldCupFooter">
<div class="singleRuleDivider"></div>
<hr class="single-rule" />
<div class="nythpWorldCupFooterLeft">
<h6>World Cup Coverage</h6>
<h5><a href="http://www.nytimes.com/sports/worldcup/?hp">News »</a></h5>
<h5><a href="http://www.nytimes.com/interactive/2014/sports/worldcup/world-cup-schedule-and-results.html?hp">Schedule »</a></h5>
<h5><a href="http://www.nytimes.com/interactive/2014/sports/worldcup/photo-firehose.html?hp">Photos »</a></h5>
</div>
<div class="nythpWorldCupFooterRight">
    <div id="nythpWCAppsPromoText"></div>
</div>
</div>
<script type="text/javascript">
function nythpRndmOlyPromo(jQuery){

    var olyText = new Array;
    olyText[0]="<a href=\"https://twitter.com/nytsports/\"><span class=\"media icon twitterIcon\">&thinsp;</span>For World Cup news and results, <strong>follow @nytsports</strong>.</a>";
    olyText[1]="<a href=\"http://www.nytimes.com/interactive/2014/sports/nytsports-signup.html?hp\"><span class=\"media icon emailIcon\">&nbsp;</span>Sign up for a <strong>daily recap</strong> of highlights from the World Cup.</a>";


    rdmText = Math.floor(Math.random()*olyText.length);
    document.getElementById("nythpWCAppsPromoText").innerHTML=olyText[rdmText];
}
nythpRndmOlyPromo();
</script>	</div>
                        </div><!-- close photo-spot-region -->

                        <hr class="scotch-rule" />
                    
                    
                        <div class="second-column-region region">

                            <div class="collection">
        <article class="story theme-summary" data-story-id="100000002965941" data-rank="0" data-collection-renderstyle="HpSumSmallMediaHigh">
    
        <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/27/us/politics/howard-h-baker-jr-great-conciliator-of-senate-dies-at-88.html">Howard Baker Jr., ‘Great Conciliator’ of Senate, Dies</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>

            <div class="thumb">
            <a href="http://www.nytimes.com/2014/06/27/us/politics/howard-h-baker-jr-great-conciliator-of-senate-dies-at-88.html"><img src="http://static01.nyt.com/images/2014/06/27/us/BAKER-1-obit/BAKER-1-obit-thumbStandard.jpg" alt=""></a>
        </div>
    
    <p class="byline">By DAVID STOUT <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="2:35 PM" data-utc-timestamp="1403807734">2:35 PM ET</time></p>
    <p class="summary">
        Mr. Baker, 88, a soft-spoken Tennessee lawyer, served three terms in the Senate, including eight years as the chamber’s Republican leader.    </p>

    
    </article>
<hr class="single-rule" />
</div><div class="collection">
        <article class="story theme-summary" data-story-id="100000002961396" data-rank="0" data-collection-renderstyle="HpSum">
    
        <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/27/nyregion/new-york-schools-chancellor-carmen-farina-advocates-more-balanced-literacy.html">Reviving a Teaching Method That Fell From Favor</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
    <p class="byline">By JAVIER C. HERNÁNDEZ <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="11:38 AM" data-utc-timestamp="1403797095">11:38 AM ET</time></p>
    <p class="summary">Chancellor Carmen Fariña wants schools to adopt aspects of a method that the Education Department turned away from.</p>

	
	</article>

<hr class="single-rule" />
</div><div class="collection">
        <article class="story theme-summary" data-story-id="100000002957337" data-rank="0" data-collection-renderstyle="HpSumSmallMediaHigh">
    
            <h3 class="kicker">From the Magazine </h3>
        <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/29/magazine/mark-sanfords-path-of-most-resistance.html">Mark Sanford’s Path of Most Resistance</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>

            <div class="thumb">
            <a href="http://www.nytimes.com/2014/06/29/magazine/mark-sanfords-path-of-most-resistance.html"><img src="http://static01.nyt.com/images/2014/06/29/magazine/29sanford1/mag-29sanford-t_CA0-thumbStandard.jpg" alt=""></a>
        </div>
    
    <p class="byline">By JIM RUTENBERG </p>
    <p class="summary">
        The South Carolina governor went from potential presidential contender to late-night punch line. Now he’s just a junior congressman trying to find his way in a divided G.O.P.    </p>

            <p class="theme-comments">
    <a href="http://www.nytimes.com/2014/06/29/magazine/mark-sanfords-path-of-most-resistance.html?hp&amp;target=comments#commentsContainer" class="comments-link"><i class="icon comments-icon"></i><span class="comment-count hidden"></span>&nbsp;Comments</a>
</p>
    
    </article>
<hr class="single-rule" />
</div><div class="collection headlines">
			<h3 class="kicker collection-kicker">More News</h3>
	    <ul class="theme-news-headlines">
                    <li>
            <article class="story" data-story-id="100000002965213" data-rank="0" data-collection-renderstyle="HpHeadline">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/world/europe/kerry-warns-russia-over-ukraine-separatists.html">Kerry Turns Up Pressure on Russia Over Ukraine</a> <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="11:43 AM" data-utc-timestamp="1403797414">11:43 AM ET</time><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002965137" data-rank="1" data-collection-renderstyle="HpHeadline">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/arts/music/julius-rudel-longtime-city-opera-impresario-dies-at-93.html">Julius Rudel, City Opera Impresario, Dies at 93</a> <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="11:16 AM" data-utc-timestamp="1403795806">11:16 AM ET</time><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002964455" data-rank="2" data-collection-renderstyle="HpHeadline">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/world/use-of-drones-for-killings-risks-a-war-without-end-panel-concludes-in-report.html">Use of Drones Risks a Lengthy War, Report States</a> <span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002964832" data-rank="3" data-collection-renderstyle="HpHeadline">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/world/middleeast/abu-qatada-acquitted-of-terrorism-charges-in-jordan.html">Cleric Acquitted of Terror Charges in Jordan</a> <span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002964757" data-rank="4" data-collection-renderstyle="HpHeadline">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/world/americas/opium-production-on-the-rise-worldwide-un-reports.html">Opium Production on the Rise, U.N. Reports</a> <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="12:52 PM" data-utc-timestamp="1403801554">12:52 PM ET</time><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</div>
                        </div><!-- close second-column-region -->

                    
                </div><!-- close b-column -->

            </div><!-- close wide-b-layout -->

            
        </section><!-- close top-news -->

        <div class="wide-a-layout layout">

            <div class="a-column column">

                <hr class="scotch-rule" />

                <div class="video-player-region region">

                    <div class="collection">
        <section id="extendedVideoPlayerModule"
         class="extendedVideoPlayerModule extendedVideoPlayerLegacyModule"
         data-playlist-id="1194811622188"
         data-api-token="cE97ArV7TzqBzkmeRVVhJ8O6GWME2iG_bRvjBTlNb4o."
         data-player-id="2640832222001"
         data-publisher-id="1749339200">
    <header class="extVidPlayerHeader">
        <h2 class="section-heading"><a href="http://www.nytimes.com/video">Times<span>Video</span></a></h2>
        <a href="http://www.nytimes.com/video?src=vidm" class="user-action extVidPlayerSectionHeaderLink"> More Video &raquo;</a>
    </header>
    <article class="story theme-summary">
        <figure class="media video-playlist videoContainer" aria-label="media" role="group">
            <span class="visually-hidden">Video Playlist</span>
            <div class="extendedVideoPocketPlayerContainer"></div>
            <div class="videoShare sharetools"
                data-shares="email|,facebook|,twitter|,show-all|"
                data-url=""
                data-title=""
                data-description=""
                data-content-type="video">
            </div>
            <figcaption class="videoDetails">
                <h3 class="kicker"></h3>
                <h2 class="story-heading"><a class="shortDescription" href="#"></a></h2>
                <p class="summary longDescription"></p>
            </figcaption>
        </figure>
    </article>
    <footer class="extVidPlayerThumbsContainer">
        <div class="extVidPlayerThumbsContainerShadow"></div>
        <div class="extVidPlayerNav clearfix">
            <div class="extVidPlayerNavContent">
                <div class="arrow arrow-left previousVideo">
                    <span class="visually-hidden">Previous</span>
                    <div class="arrow-conceal"></div>
                </div>
                <div class="arrow arrow-right nextVideo">
                    <span class="visually-hidden">Next</span>
                    <div class="arrow-conceal"></div>
                </div>
            </div>
        </div>
        <div id="extVidPlayerThumbsWrapper" class="extVidPlayerThumbsWrapper">
            <ul id="extVidPlayerThumbs" class="videoThumbs"></ul>
        </div>
    </footer>
</section>
</div>
                </div><!-- close video-player-region -->

            </div><!-- close a-column -->

            <div class="b-column column">

                <hr class="scotch-rule" />

                <div class="pocket-region region">

                    <div class="collection">
            <h2 class="section-heading">
	        <a href="http://www.nytimes.com/pages/arts/music/index.html">Music &raquo;</a>
	    </h2>
        <article class="story theme-summary" data-story-id="100000002964849" data-rank="0" data-collection-renderstyle="HpSectionSumSmallMediaHigh">
    
        <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/27/arts/music/beyonce-and-jay-z-kick-off-shared-on-the-run-tour.html">Opposites Attracting (and Complementing)</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>

            <div class="thumb">
            <a href="http://www.nytimes.com/2014/06/27/arts/music/beyonce-and-jay-z-kick-off-shared-on-the-run-tour.html"><img src="http://static01.nyt.com/images/2014/06/27/arts/Jayz/Jayz-thumbStandard.jpg" alt=""></a>
        </div>
    
    <p class="byline">By JON CARAMANICA <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="12:49 PM" data-utc-timestamp="1403801350">12:49 PM ET</time></p>
    <p class="summary">
        Beyoncé and Jay Z, married since 2008, have begun their first tour together with a concert in Florida.    </p>

    
    </article>
<hr class="single-rule" />
</div>
<section class="news-feed">
	<div class="collection">
					<h3 class="kicker collection-kicker"><a href="http://www.nytimes.com/pages/aponline/index.html">News from A.P.</a> & <a href="http://www.nytimes.com/pages/reuters/index.html">Reuters</a> »</h3>
			    <ul class="theme-news-feed-headlines">
	        	            <li>
	            <article class="story" data-story-id="100000002966068" data-rank="0" data-collection-renderstyle="WireFeed">
    
    <h2 class="story-heading"><a href="http://www.nytimes.com/aponline/2014/06/26/us/politics/ap-us-obama-syria.html">Obama Seeks $500M to Train, Equip Syrian Rebels</a> <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="3:01 PM" data-utc-timestamp="1403809303">3:01 PM ET</time></h2>
</article>
	            </li>
	        	            <li>
	            <article class="story" data-story-id="100000002966061" data-rank="1" data-collection-renderstyle="WireFeed">
    
    <h2 class="story-heading"><a href="http://www.nytimes.com/aponline/2014/06/26/us/politics/ap-us-congress-mideast.html">Senate Confirms New US Ambassadors to Iraq, Egypt</a> <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="2:58 PM" data-utc-timestamp="1403809121">2:58 PM ET</time></h2>
</article>
	            </li>
	        	            <li>
	            <article class="story" data-story-id="100000002966059" data-rank="2" data-collection-renderstyle="WireFeed">
    
    <h2 class="story-heading"><a href="http://www.nytimes.com/reuters/2014/06/26/us/26reuters-usa-kentucky-corvette-sinkhole.html">Sinkhole Gives Rise to Tourism at Corvette Museum</a> <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="2:58 PM" data-utc-timestamp="1403809095">2:58 PM ET</time></h2>
</article>
	            </li>
	        	            <li>
	            <article class="story" data-story-id="100000002966051" data-rank="3" data-collection-renderstyle="WireFeed">
    
    <h2 class="story-heading"><a href="http://www.nytimes.com/aponline/2014/06/26/arts/ap-us-reading-rainbow-macfarlane.html">'Reading Rainbow' Gets Hand From Seth MacFarlane</a> <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="2:55 PM" data-utc-timestamp="1403808930">2:55 PM ET</time></h2>
</article>
	            </li>
	        	    </ul>
	</div>
</section>

                </div><!-- close pocket-region -->

            </div><!-- close b-column -->

        </div><!-- close wide-a-layout -->

    </div><!-- close ab-column -->

    <div class="c-column column">

        <div id="Middle" class="ad middle-ad hidden"></div>

        <div class="region c-column-top-span-region">

            <div class="collection">
        <section class="opinion">
  <h2 class="section-heading"><a href="http://www.nytimes.com/pages/opinion/index.html">The Opinion Pages</a>
  </h2>
  <div class="layout split-layout">
    <div class="column">
      <div class="collection">
        <article class="story theme-summary">
          <h3 class="kicker">Private Lives</h3>
          <h2 class="story-heading"><a href="http://opinionator.blogs.nytimes.com/2014/06/25/speaking-to-my-father-in-a-dead-dialect/">Speaking to My Father in a Dead Dialect </a><span class="product-label theme-nyt-now"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>
          </h2>
          <div class="small-thumb"><a href="http://opinionator.blogs.nytimes.com/2014/06/25/speaking-to-my-father-in-a-dead-dialect/"><img src="http://graphics8.nytimes.com/images/blogs_v3/firstperson/firstperson75.png" height="50" width="50" /></a>
          </div>
          <p class="byline">By JOSEPH LUZZI</p>
          <p class="summary">The language he spoke is leaving me now. And he is leaving me, too.</p>
        </article>
      </div>
    </div>
    <div class="column">
      <div class="collection headlines">
        <ul class="theme-news-headlines">
          <li>
            <article class="story">
              <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/26/opinion/the-supreme-court-saves-cellphone-privacy.html">Editorial: The Supreme Court Saves Cellphone Privacy</a><span class="product-label theme-nyt-now"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>
              </h2>
            </article>
          </li>
          <li>
            <article class="story">
              <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/26/opinion/linda-greenhouse-the-supreme-court-justices-have-cellphones-too.html">Greenhouse: The Justices Have Cellphones, Too</a><span class="product-label theme-nyt-now"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>
              </h2>
            </article>
          </li>
          <li>
            <article class="story">
              <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/26/opinion/gail-collins-mississippi-goes-for-the-money.html">Collins: Mississippi Goes for the Money</a><span class="product-label theme-nyt-now"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>
              </h2>
            </article>
          </li>
          <li>
            <article class="story">
              <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/26/opinion/nicholas-kristof-obamas-weakness-or-ours.html">Kristof: Obama’s Weakness, or Ours?</a><span class="product-label theme-nyt-now"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>
              </h2>
            </article>
          </li>
  <li>
            <article class="story">
              <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/27/opinion/brazil-vs-brazil.html">Barbara: Brazil vs. Brazil</a><span class="product-label theme-nyt-now"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>
              </h2>
            </article>
          </li>
        </ul>
      </div>
    </div>
  </div>
</section><style>

.NYT5Style hr.single-rule { display: none; }
    #d-newProducts-OpEdApp {
        margin-bottom: 15px;
        text-align: center;
    }
    #d-newProducts-OpEdApp .singleRule,
    #d-newProducts-OpEdApp .single-rule {
        border-color: #f1f1f1;
    }
    #d-newProducts-OpEdApp p {
        position: relative;

        font-family: "nyt-franklin",arial,helvetica,sans-serif;
        font-size: 12px;
        font-weight: 500;
        line-height: 1.2;
    }

.NYT5Style #d-newProducts-OpEdApp p {
        top: -8px;
}
    #d-newProducts-OpEdApp .thumby {
        position: absolute;
        top: -4px;
    }
    #d-newProducts-OpEdApp .thumby img {
       width: 22px;
    }
    #d-newProducts-OpEdApp strong {
        font-size: 13px;
        font-weight: 700;
        margin-left: 26px;
        color: black;
    }
    #d-newProducts-OpEdApp a {
        display: block;
        color: #333;
        text-decoration: none;
    }
    #d-newProducts-OpEdApp a .linkBlue {
        color: #326891;
    }
    #d-newProducts-OpEdApp a:hover .linkBlue,
    #d-newProducts-OpEdApp a:active .linkBlue {
        text-decoration: underline;
    }
    #d-newProducts-OpEdApp .pipe {
        color: #bbb;
    }
</style>

<div id="d-newProducts-OpEdApp">

    <div class="singleRule"></div>
<hr class="single-rule" />

    <p>
        <a href="http://www.nytimes.com/subscriptions/Multiproduct/lp8X7JK.html?campaignId=47K7F"><span class="thumby"><img src="http://graphics8.nytimes.com/packages/images/nytdesign/2014/opinion/homepage/opEdTicon@56px.png"/></span><strong>NYT Opinion:</strong> the new Opinion subscription + app &nbsp;<span class="pipe">|</span>&nbsp; <span class="linkBlue">Learn&nbsp;More&nbsp;»</span></a>
    </p>

</div></div><div class="collection">
        <style>

#nythpTimesInsiderPromo .thumb img, #nythpTimesInsiderPromo .thumb { height: 50px; width: 50px; }
#nythpTimesInsiderPromo { margin-bottom: -22px; }
#nythpTimesInsiderPromo h2 { font-family: "nyt-cheltenham",georgia,"times new roman",times,serif !important; font-size: 20px; font-weight: 500; line-height: 24px;}
</style>


<hr class="scotch-rule" />

<article id="nythpTimesInsiderPromo" class="story theme-summary">
    
            <div class="thumb">
            <a href="http://www.nytimes.com/times-insider/"><img src="http://graphics8.nytimes.com/images/2014/04/02/business/times-insider-logo/times-insider-logo-blogSmallThumb.png" alt="" /></a>
        </div>

        <h2 class="story-heading"><a href="http://www.nytimes.com/times-insider/">Today’s Times Insider</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>


   
    <p class="summary">
        Behind the scenes at The New York Times
    </p>

    
    </article></div><div class="collection headlines">
	    <ul class="theme-news-headlines">
                    <li>
            <article class="story" data-story-id="100000002963956" data-rank="0" data-collection-renderstyle="HpBlogHeadline">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/times-insider/#post-2120"> First Glimpses: Spielberg and Snow White</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002963861" data-rank="1" data-collection-renderstyle="HpBlogHeadline">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/times-insider/#post-2209"> No Order in the Court Without Yiddish</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</div><div class="collection">
        <div style="margin-top: 15px;"></div></div>
        </div><!-- close c-column-top-span-region -->

        <div id="HPHalf" class="ad hphalf-ad"></div>
        <div id="HPBig-ATF" class="ad hpbig-atf-ad"></div>

        <div class="region c-column-middle-span-region">

            <div class="collection">
         <hr class="scotch-rule" />

<!-- DOMESTIC MARKETS -->
<script type="text/javascript">
function insertWSODModule(file)
{ var doc = document.getElementsByTagName('head').item(0); var rnd = "?"+ Math.random(); var wsod = document.createElement('script'); wsod.setAttribute('language','javascript'); wsod.setAttribute('type','text/javascript'); wsod.setAttribute('src',file+rnd); doc.appendChild(wsod); }
</script>



<section class="markets">
    <div class="layout split-layout theme-base">
        <div class="column">

            <div id="wsodMarkets">

                <div id="wsodMarketsChart"></div>

                <script type="text/javascript">
                insertWSODModule("http://markets.on.nytimes.com/research/modules/home/home.asp");
                </script>

                <form class="markets-search" method="get" action="http://query.nytimes.com/gst/getquotes.html">
                    <ul class="menu">
                        <li><label id="markets-search-label" for="markets-search-query"><i class="icon search-icon"></i>Get Quotes </label></li>
                        <li><a class="user-action" href="http://markets.on.nytimes.com/research/portfolio/view/view.asp">My Portfolios</a></li>
                    </ul>

                    <div id="markets-search-inputs" class="markets-search-inputs">
                        <input id="markets-search-query" class="markets-search-query text" name="symb" type="text" placeholder="Stock, ETFs, Funds" />
                        <button id="markets-search-submit" class="button submit-button" type="submit">Search</button>
                        <div class="markets-search-query-suggestions" style="display: none;"></div>
                    </div>
                </form>
            </div> <!-- close wsodMarkets -->
        </div> <!-- close column -->
        <div class="column">
            <div id="Middle4-alternate-content"> </div>
            <div id="Middle4" class="ad middle4-ad hidden"></div>
        </div> <!-- close column -->
    </div> <!-- close layout -->
</section> <!-- close section -->


<!-- If you are filling in the spot normally occupied by the Markets ad, with some editorial content, because the Ad is not serving: Write in your promo inside the div id 'Middle4-alternate-content' -->
</div><div class="collection">
        <div style="margin-top: 15px;"></div></div>
        </div><!-- close c-column-middle-span-region -->

        <div id="HPMiddle" class="ad hpmiddle-ad"></div>

        <div class="region c-column-above-moth-fixed-region">

            <div class="collection">
        <div style="margin-top: 15px;"></div><style>
.nythpSplitCode .column { margin-left: 21px; }
.nythpSplitCode .column:first-child { margin-left: 0px; }
.nythpSplitCode.layout { background: none; }

#nythpDaypartRegion .story { margin-bottom: 15px !important; }

#nythpDaypartRegion h4.sectionHeaderHome {
    font-size: 12px;
    line-height: 14px;
    font-weight: 700;
    font-family: "nyt-cheltenham-sh",georgia,"times new roman",times,serif;
    text-transform: uppercase;
    margin-bottom: 6px;
}

#nythpDaypartRegion h5 {
	font-size: 14px;
	line-height: 16px;
	font-weight: 700;
	font-family: "nyt-cheltenham-sh",georgia,"times new roman",times,serif;
	margin-bottom: 2px;
}

#nythpDaypartRegion .runaroundRight {
	float: right;
	clear: right;
	margin: 3px 0px 6px 6px;
}

#nythpDaypartRegion .summary {
    font-size: 13px;
    line-height: 18px;
    font-weight: 400;
    font-family: georgia,"times new roman",times,serif;
    margin-bottom: 0px;
}

#nythpDaypartRegion .refer li {
	background-image: url(http://css.nyt.com/images/icons/bullet4x4.gif);
	background-repeat: no-repeat;
	background-position: 0 .4em;
	padding-left: 8px;
	font-size: 12px;
	line-height: 14px;
	font-weight: 700;
	font-family: "nyt-cheltenham-sh",georgia,"times new roman",times,serif;
}
</style>
</div><div class="collection">
        <hr class="scotch-rule" />
	<div id="nythpDaypartRegion">
		<div class="layout nythpSplitCode">
			<div class="column"><div><h4 class="sectionHeaderHome"><a href="http://theater.nytimes.com/pages/theater/index.html?src=dayp">Theater »</a></h4>
<div class="story">
<h5><a href="http://www.nytimes.com/2014/06/29/theater/the-arranger-glen-kelly-knows-the-broadway-score.html?src=dayp" >
 A Tailor of Music, Skilled in Alterations
<i class="icon dot-logo-icon hidden"></i></a></h5>
<div class="runaroundRight">
<a href="http://www.nytimes.com/2014/06/29/theater/the-arranger-glen-kelly-knows-the-broadway-score.html?src=dayp">
<img src="http://graphics8.nytimes.com/images/2014/06/29/arts/29GLEN3/29GLEN3-thumbStandard-v2.jpg" alt=" A Tailor of Music, Skilled in Alterations" width="75" height="75" />
</a></div>
<p class="summary">

Glen Kelly, whose Broadway work this season includes “Bullets Over Broadway” and “Aladdin,” is one musical arranger who knows the score.
</p>
</div>


<!-- end of first daypart promo code, don't touch the column code below -->

</div></div><div class="column lastColumn"><div class="columnGroup flushBottom"><h4 class="sectionHeaderHome">&nbsp;</h4>

<!--- insert second daypart promo below -->

<div class="story">
<h5><a href="http://www.nytimes.com/2014/06/29/theater/benjamin-scheuer-talks-about-his-solo-show-the-lion.html?src=dayp" >
 Recalling Dad and Disease With a Roar
<i class="icon dot-logo-icon hidden"></i></a></h5>
<p class="summary">
Benjamin Scheuer, star of the solo musical “The Lion,” discusses his show.
</p>
</div>
<div id="Middle5-alternate-content"></div>
<div id="Middle5" class="ad middle5-ad hidden"></div>

</div></div></div></div><div style="margin-top: 15px;"></div></div><div class="collection">
        <hr class="scotch-rule" /></div>
        </div><!-- close c-column-above-moth-fixed-region -->

                    <section class="real-estate">
                <div class="layout split-layout theme-base">
                    <div class="column">
                        <div class="region real-estate-left-region">

                            <div class="collection">
            <h2 class="section-heading">
	        <a href="http://www.nytimes.com/pages/realestate/index.html">Real Estate &raquo;</a>
	    </h2>
        <article class="story theme-summary" data-story-id="100000002961522" data-rank="0" data-collection-renderstyle="HpSectionSumSmallMedia">
    
            <h3 class="kicker">The Hunt </h3>
        <h2 class="story-heading"><a href="http://www.nytimes.com/2014/06/29/realestate/an-inwood-apartment-fits-the-bill.html">Tying Up a Deal on the Proverbial Shoestring</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
    <p class="byline">By JOYCE COHEN <time class="timestamp" datetime="2014-06-26" data-eastern-timestamp="1:39 PM" data-utc-timestamp="1403804363">1:39 PM ET</time></p>

            <div class="thumb">
            <a href="http://www.nytimes.com/2014/06/29/realestate/an-inwood-apartment-fits-the-bill.html"><img src="http://static01.nyt.com/images/2014/06/29/realestate/29HUNTMAIN/29HUNT-MAIN-thumbStandard.jpg" alt=""></a>
        </div>
    
    <p class="summary">
        Matt Payne set out to buy his first home in New York. He found it in Inwood.    </p>

    
        <ul class="refer theme-news-headlines">
            <li>
            <article class="story">
                <h2 class="refer-heading"><a href="http://www.nytimes.com/top/classifieds/realestate/columns/the_hunt/index.html">More The Hunt Columns</a></h2>
            </article>
        </li>
        </ul>
</article>

</div><div class="collection">
        <ul class="theme-module-headlines">
<li><article class="story" data-collection-renderstyle="HpHeadline"><h2 class="story-heading"><a href="http://realestate.nytimes.com/search/advanced.aspx">Search for Homes for Sale or Rent</a></h2></article></li>

<li><article class="story" data-collection-renderstyle="HpHeadline"><h2 class="story-heading"><a href="http://www.nytimes.com/ref/classifieds/">Sell Your Home</a></h2></article></li></ul>

</div>
                        </div><!-- close real-estate-left-region -->
                    </div>
                    <div class="column">
                        <div class="region real-estate-right-region">

                            
                            <div id="HPmodule-RE2" class="ad hpmodule-re2-ad"></div>
                        </div><!-- close real-estate-right-region -->
                    </div>
                </div>
            </section>
        
        <div class="region c-column-above-moth-region">

            
        </div><!-- close c-column-above-moth-region -->

        <div id="HPMiddle3" class="ad hpmiddle3-ad"></div>

    </div><!-- close c-column -->

</div><!-- close span-ab-layout -->

<section class="inside-nyt">
    <div class="inside-nyt-region region">
        <h2 class="section-heading">Inside Nytimes.com</h2>
        <div id="inside-nyt-browser" class="inside-nyt-browser">
            <div class="navigation-control">
                <button class="button previous deactivated">
                    <div class="arrow arrow-left">
                    <span class="visually-hidden">Go to the previous story</span>
                    <div class="arrow-conceal"></div>
                    </div>
                </button>
                <button class="button next">
                    <div class="arrow arrow-right">
                    <span class="visually-hidden">Go to the next story</span>
                    <div class="arrow-conceal"></div>
                    </div>
                </button>
            </div>
            <div class="carousel">
                <ol class="menu layout-horizontal theme-story">
                    <li>
        <section>
        <h2 class="section-heading"><a href="http://www.nytimes.com/pages/garden/index.html">Home & Garden</a></h2>

    <article class="story theme-summary" data-story-id="100000002963866" data-rank="0" data-collection-renderstyle="Moth">
        <a class="story-link" href="http://www.nytimes.com/2014/06/26/garden/melissa-leos-theater-in-the-round.html">
            <div class="wide-thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/garden/20140626-HOMEMADE-slide-BE29/20140626-HOMEMADE-slide-BE29-mediumSquare149.jpg" alt="">
            </div>
            <h2 class="story-heading">Melissa Leo’s Theater in the Round<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
        </a>
    </article>

        </section>
    </li>
    <li>
        <section>
        <h2 class="section-heading"><a href="http://www.nytimes.com/pages/sports/basketball/index.html">Pro Basketball</a></h2>

    <article class="story theme-summary" data-story-id="100000002962807" data-rank="1" data-collection-renderstyle="Moth">
        <a class="story-link" href="http://www.nytimes.com/2014/06/26/sports/basketball/jabari-parker-heeds-nba-draft-call-bypassing-formal-mormon-mission.html">
            <div class="wide-thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/sports/PARKER/PARKER-mediumSquare149.jpg" alt="">
            </div>
            <h2 class="story-heading">For Mormon Athletes, Mission Is to Play<span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
        </a>
    </article>

        </section>
    </li>
    <li>
        <section>
        <h2 class="section-heading"><a href="http://www.nytimes.com/pages/opinion/index.html">Opinion</a></h2>

    <article class="story theme-summary no-thumb" data-story-id="100000002964106" data-rank="2" data-collection-renderstyle="Moth">
        <a class="story-link" href="http://www.nytimes.com/roomfordebate/2014/06/25/has-capitalism-become-incompatible-with-christianity/">
            <h2 class="story-heading">God and Mammon<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
            <p class="summary">Pope Francis distrusts the market economy. Others call it inherently moral. Room for Debate asks whether contemporary capitalism is compatible with Christian principles.</p>
        </a>
    </article>

        </section>
    </li>
    <li>
        <section>
        <h2 class="section-heading"><a href="http://www.nytimes.com/pages/travel/index.html">Travel</a></h2>

    <article class="story theme-summary" data-story-id="100000002962541" data-rank="3" data-collection-renderstyle="Moth">
        <a class="story-link" href="http://www.nytimes.com/2014/06/25/travel/to-the-cup-the-long-way-round.html">
            <div class="wide-thumb">
                <img src="http://static01.nyt.com/images/2014/06/24/travel/24Frugal-Journey-1/24Frugal-Journey-1-mediumSquare149.jpg" alt="">
            </div>
            <h2 class="story-heading">To the Cup, the Long Way Round<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
        </a>
    </article>

        </section>
    </li>
    <li>
        <section>
        <h2 class="section-heading"><a href="http://www.nytimes.com/pages/opinion/index.html">Opinion</a></h2>

    <article class="story theme-summary" data-story-id="100000002964230" data-rank="4" data-collection-renderstyle="Moth">
        <a class="story-link" href="http://www.nytimes.com/2014/06/26/opinion/the-iraqi-friends-we-abandoned.html">
            <div class="wide-thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/opinion/0626OPEDbarczyk/0626OPEDbarczyk-mediumSquare149.jpg" alt="">
            </div>
            <h2 class="story-heading">Op-Ed: The Iraqi Friends We Abandoned<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
        </a>
    </article>

        </section>
    </li>
    <li>
        <section>
        <h2 class="section-heading"><a href="http://www.nytimes.com/pages/travel/index.html">Travel</a></h2>

    <article class="story theme-summary" data-story-id="100000002957415" data-rank="5" data-collection-renderstyle="Moth">
        <a class="story-link" href="http://www.nytimes.com/2014/06/29/travel/36-hours-in-stockholm.html">
            <div class="wide-thumb">
                <img src="http://static01.nyt.com/images/2014/06/29/travel/29HOURS1/29HOURS1-mediumSquare149.jpg" alt="">
            </div>
            <h2 class="story-heading">36 Hours in Stockholm<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
        </a>
    </article>

        </section>
    </li>

    <li>
        <section>
        <h2 class="section-heading"><a href="http://www.nytimes.com/pages/business/media/index.html">Media</a></h2>

    <article class="story theme-summary" data-story-id="100000002964072" data-rank="0" data-collection-renderstyle="Moth">
        <a class="story-link" href="http://www.nytimes.com/2014/06/26/business/media/disney-shunning-youtube-template.html">
            <div class="wide-thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/arts/26GIRLWORLD/26GIRLWORLD-mediumSquare149.jpg" alt="">
            </div>
            <h2 class="story-heading">Disney Looks to Draw In ‘Tweens’<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
        </a>
    </article>

        </section>
    </li>
    <li>
        <section>
        <h2 class="section-heading"><a href="http://www.nytimes.com/pages/opinion/index.html">Opinion</a></h2>

    <article class="story theme-summary no-thumb" data-story-id="100000002963519" data-rank="1" data-collection-renderstyle="Moth">
        <a class="story-link" href="http://takingnote.blogs.nytimes.com/2014/06/25/what-are-you-really-worth-to-your-employer/">
            <h2 class="story-heading">Taking Note: What Are You Really Worth to Your Employer?<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
            <p class="summary">Banks and other companies buy life insurance on their employees, reaping tax-free windfalls.</p>
        </a>
    </article>

        </section>
    </li>
    <li>
        <section>
        <h2 class="section-heading"><a href="http://www.nytimes.com/pages/health/index.html">Health</a></h2>

    <article class="story theme-summary" data-story-id="100000002964667" data-rank="2" data-collection-renderstyle="Moth">
        <a class="story-link" href="http://well.blogs.nytimes.com/2014/06/26/putting-us-all-at-risk-for-measles/">
            <div class="wide-thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/health/26well_measles/26well_measles-mediumSquare149-v2.jpg" alt="">
            </div>
            <h2 class="story-heading">Putting Us All at Risk for Measles<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
        </a>
    </article>

        </section>
    </li>
    <li>
        <section>
        <h2 class="section-heading"><a href="http://www.nytimes.com/pages/opinion/index.html">Opinion</a></h2>

    <article class="story theme-summary" data-story-id="100000002964448" data-rank="3" data-collection-renderstyle="Moth">
        <a class="story-link" href="http://opinionator.blogs.nytimes.com/2014/06/25/speaking-to-my-father-in-a-dead-dialect/">
            <div class="wide-thumb">
                <img src="http://static01.nyt.com/images/2014/06/25/opinion/0625PRIVATELIVES/0625PRIVATELIVES-mediumSquare149.jpg" alt="">
            </div>
            <h2 class="story-heading">Private Lives: My Father’s Dead Dialect<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
        </a>
    </article>

        </section>
    </li>
    <li>
        <section>
        <h2 class="section-heading"><a href="http://www.nytimes.com/pages/health/index.html">Health</a></h2>

    <article class="story theme-summary" data-story-id="100000002962096" data-rank="4" data-collection-renderstyle="Moth">
        <a class="story-link" href="http://well.blogs.nytimes.com/2014/06/25/for-fitness-push-yourself/">
            <div class="wide-thumb">
                <img src="http://static01.nyt.com/images/2014/06/24/health/24physed_well/24physed_well-mediumSquare149.jpg" alt="">
            </div>
            <h2 class="story-heading">For Fitness, Push Yourself<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
        </a>
    </article>

        </section>
    </li>
    <li>
        <section>
        <h2 class="section-heading"><a href="http://www.nytimes.com/pages/sports/worldcup/index.html">World Cup</a></h2>

    <article class="story theme-summary" data-story-id="100000002961698" data-rank="5" data-collection-renderstyle="Moth">
        <a class="story-link" href="http://www.nytimes.com/2014/06/25/sports/worldcup/minhocao-represents-sao-paulos-crumbling-but-welcoming-heart.html">
            <div class="wide-thumb">
                <img src="http://static01.nyt.com/images/2014/06/25/sports/soccer/25minhocao_show-slide-RAJL/25minhocao_show-slide-RAJL-mediumSquare149.jpg" alt="">
            </div>
            <h2 class="story-heading">A Highway Doubling as a Haven<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
        </a>
    </article>

        </section>
    </li>

                </ol>
            </div>
        </div>
    </div>
</section>

<div class="span-ab-layout layout">

    <div class="ab-column column">

        <hr class="scotch-rule" />

        <section class="well">
    <div class="region well-region">
        <h2 class="section-heading visually-hidden">Sections</h2>

                
            <div class="split-3-layout layout theme-base">

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/world/index.html">World &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002964833" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/27/world/middleeast/iraqi-parliament-to-meet-to-form-new-government.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/25/multimedia/maliki-unity-govt-reject/maliki-unity-govt-reject-thumbStandard-v2.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Iraq Shiite Leaders Hold Talks on Premier, as Support for Maliki Slips<span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002962767" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/world/middleeast/shiite-violence-traps-sunnis-in-baghdad.html">Shiite Violence Traps Baghdad’s Sunnis, Haunted by a Grim Past</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002962317" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/world/middleeast/iran-iraq.html">Iran Secretly Sending Drones and Supplies Into Iraq, U.S. Officials Say</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/business/index.html">Business Day &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002957341" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/29/magazine/whats-the-matter-with-eastern-kentucky.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/29/magazine/29economy/29economy-thumbStandard-v2.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        It’s the Economy: What’s the Matter With Eastern Kentucky?<span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002952485" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/upshot/where-are-the-hardest-places-to-live-in-the-us.html">Where Are the Hardest Places to Live in the U.S.?</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002965123" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/business/gm-to-sell-chevrolet-cruzes-after-air-bag-recall.html">G.M. to Resume Selling Chevrolet Cruzes</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column last-column">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/opinion/index.html">Opinion &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002964513" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/26/opinion/gail-collins-mississippi-goes-for-the-money.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2010/09/16/opinion/Collins_New/Collins_New-thumbStandard-v2.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Gail Collins: How Did Brett Favre Help Thad Cochran in His Senate Race?<span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002963588" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/opinion/the-supreme-court-saves-cellphone-privacy.html">The Supreme Court Saves Cellphone Privacy</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002964471" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/opinion/nicholas-kristof-obamas-weakness-or-ours.html">Obama’s Weakness, or Ours?</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
            </div><!-- close split-3-layout -->

        
            <div class="split-3-layout layout theme-base">

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/national/index.html">U.S. &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002960764" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/27/us/kentucky-sinkhole-a-mixed-blessing-for-corvette-museum.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/us/corvette-sinkhole-ss-slide-D70Q/corvette-sinkhole-ss-slide-D70Q-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Kentucky Sinkhole a Mixed Blessing for Corvette Museum<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002833446" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/us/supreme-court-abortion-clinic-protests.html">Supreme Court Strikes Down Abortion Clinic Buffer Zones</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002833469" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/us/supreme-court-president-recess-appointments.html">Supreme Court Curbs President’s Power to Make Recess Appointments</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/technology/index.html">Technology &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002965724" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://bits.blogs.nytimes.com/2014/06/26/googles-grand-plans-a-conversation-with-googles-larry-page-and-sundar-pichai/">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/business/26bits-page/Statejp-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Bits One on One: Google’s Grand Plans: A Conversation With Google’s Larry Page and Sundar Pichai<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002964487" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/technology/personaltech/a-reach-too-far-by-google.html">Larry Page on Google’s Many Arms</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002964771" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://bits.blogs.nytimes.com/2014/06/26/salesforce-takes-its-cloud-model-to-health-care/">Salesforce Takes Its Cloud Model to Health Care</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column last-column">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/arts/index.html">Arts &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002964849" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/27/arts/music/beyonce-and-jay-z-kick-off-shared-on-the-run-tour.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/27/arts/Jayz/Jayz-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Music Review: Beyoncé and Jay Z Kick Off Shared ‘On the Run’ Tour<span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002965137" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/arts/music/julius-rudel-longtime-city-opera-impresario-dies-at-93.html">Julius Rudel, Longtime City Opera Impresario, Dies at 93</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002962226" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/arts/music/elvis-costello-treats-carnegie-hall-to-a-solo-show.html">Elvis Costello Treats Carnegie Hall to a Solo Show</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
            </div><!-- close split-3-layout -->

        
            <div class="split-3-layout layout theme-base">

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/politics/index.html">Politics &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002833469" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/27/us/supreme-court-president-recess-appointments.html">

        
        <h3 class="story-heading">
        Supreme Court Curbs President’s Power to Make Recess Appointments<span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002833446" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/us/supreme-court-abortion-clinic-protests.html">Supreme Court Strikes Down Abortion Clinic Buffer Zones</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002942573" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/us/supreme-court-cellphones-search-privacy.html">Major Ruling Shields Privacy of Cellphones</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/sports/index.html">Sports &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002965209" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/27/sports/worldcup/world-cup-2014-us-germany-recife-brazil.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/sports/20140626FIFA-slide-W4L4/20140626FIFA-slide-W4L4-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Germany 1, United States 0: World Cup 2014: Germany Defeats U.S., but Americans Advance<span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002962777" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/interactive/2014/06/26/sports/worldcup/world-cup-united-states-vs-germany.html">World Cup 2014: Germany Defeats United States, 1-0</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002962846" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/interactive/2014/06/26/sports/worldcup/world-cup-portugal-vs-ghana.html">World Cup 2014: Portugal Defeats Ghana, 2-1</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column last-column">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/movies/index.html">Movies &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002964021" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/26/movies/the-new-york-asian-film-festival-returns.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/25/movies/20140626ASIANFILM-slide-WEXM/20140626ASIANFILM-slide-WEXM-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Critic’s Notebook: The New York Asian Film Festival Returns<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002962083" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/25/movies/eli-wallach-multifaceted-actor-dies-at-98.html">Eli Wallach, Multifaceted Actor on Stage and Screen, Dies at 98</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002963265" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://artsbeat.blogs.nytimes.com/2014/06/25/film-society-chooses-lisandro-alonso-for-filmmaker-residency/">Film Society Chooses Lisandro Alonso for Filmmaker Residency</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
            </div><!-- close split-3-layout -->

        
            <div class="split-3-layout layout theme-base">

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/nyregion/index.html">N.Y. / Region &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002961396" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/27/nyregion/new-york-schools-chancellor-carmen-farina-advocates-more-balanced-literacy.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/nyregion/Literacy1/Literacy1-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        New York Schools Chief Advocates More ‘Balanced Literacy’<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002963987" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/nyregion/nyu-abu-dhabi-investigation-middle-east-campus.html">American Firm Is Hired to Investigate Labor Conditions at N.Y.U.’s Abu Dhabi Campus</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002965391" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/nyregion/comptroller-approves-settlement-for-5-convicted-in-central-park-jogger-case.html">Comptroller Approves Settlement for 5 Convicted in Central Park Jogger Case</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/obituaries/index.html">Obituaries &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002965941" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/27/us/politics/howard-h-baker-jr-great-conciliator-of-senate-dies-at-88.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/27/us/BAKER-1-obit/BAKER-1-obit-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Howard H. Baker Jr., ‘Great Conciliator’ of Senate, Dies at 88<span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002965137" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/arts/music/julius-rudel-longtime-city-opera-impresario-dies-at-93.html">Julius Rudel, Longtime City Opera Impresario, Dies at 93</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002965437" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/business/john-harney-missionary-who-spread-the-gospel-of-tea-dies-at-83.html">John Harney, Missionary Who Spread the ‘Gospel of Tea,’ Dies at 83</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column last-column">

                        <section>
    <h2 class="section-heading">
        <a href="http://theater.nytimes.com/">Theater &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002962641" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/26/theater/incubator-arts-projects-katorga-an-ozet-performance.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/arts/kartorga/kartorga-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Theater Review: Incubator Arts Project’s ‘Katorga: An Ozet Performance’<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002960250" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/29/theater/the-arranger-glen-kelly-knows-the-broadway-score.html">A Tailor of Music, Skilled in Alterations</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002960253" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/29/theater/benjamin-scheuer-talks-about-his-solo-show-the-lion.html">Recalling Dad and Disease With a Roar</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
            </div><!-- close split-3-layout -->

        
            <div class="split-3-layout layout theme-base">

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/science/index.html">Science &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002963937" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://well.blogs.nytimes.com/2014/06/25/longer-heart-monitoring-backed-for-stroke-patients/">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/science/26wellheart/26wellheart-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Well: Longer Heart Monitoring Backed for Stroke Patients<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002957615" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/24/science/report-tallies-toll-on-economy-from-global-warming.html">Bipartisan Report Tallies High Toll on Economy From Global Warming</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002954095" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/24/science/searching-for-answers-in-very-old-dna.html">Searching for Answers in Very Old DNA</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://travel.nytimes.com/">Travel &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002953516" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/29/travel/gluten-free-dining-in-italy.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/29/travel/29ITALY6/29ITALY6-thumbStandard-v2.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Pursuits: Gluten-Free Dining in Italy<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002953555" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/29/travel/what-not-to-pack.html">What Not to Pack</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002957764" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/29/travel/cleveland-a-city-repurposed.html">Cleveland, a City Repurposed</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column last-column">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/arts/television/index.html">Television &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002964072" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/26/business/media/disney-shunning-youtube-template.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/arts/26GIRLWORLD/26GIRLWORLD-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Disney Hopes New (and Nostalgic) Formula Will Draw ‘Tweens’<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002964076" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/arts/television/men-in-blazers-a-whimsical-soccer-show-on-espn.html">At World Cup, Two Unknowns Are Surprise Stars</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002963533" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/arts/television/ny-med-documentary-series-returns-on-abc.html">The Return of Real Blood and Other Medical Norms</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
            </div><!-- close split-3-layout -->

        
            <div class="split-3-layout layout theme-base">

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/health/index.html">Health &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002965196" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://well.blogs.nytimes.com/2014/06/26/living-with-cancer-the-new-medicine/">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2013/07/24/health/well_cancer/well_cancer-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Well: Living With Cancer: The New Medicine<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002963937" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://well.blogs.nytimes.com/2014/06/25/longer-heart-monitoring-backed-for-stroke-patients/">Longer Heart Monitoring Backed for Stroke Patients</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002965665" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://newoldage.blogs.nytimes.com/2014/06/26/for-elderly-patients-a-sharper-focus/">For Elderly Patients, a Sharper Focus</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/dining/index.html">Dining & Wine &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002957930" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/video/dining/100000002957930/how-to-make-perfect-burgers-indoors.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/23/multimedia/sifton-hamburgers/sifton-hamburgers-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        How to Make Perfect Burgers Indoors<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002957890" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/25/dining/how-to-make-a-great-burger.html">Deconstructing the Perfect Burger</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002957346" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/29/magazine/chicken-surprise.html">Bobby Flay’s Chicken Surprise</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column last-column">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/books/index.html">Books &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002964026" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/26/books/david-balls-translation-of-diary-of-the-dark-years.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/arts/BOOK1/BOOK1-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Books of The Times: David Ball’s Translation of ‘Diary of the Dark Years’<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002949947" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/29/books/review/david-leavitt-by-the-book.html">David Leavitt: By the Book</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002964078" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/books/honoring-james-joyces-dubliners-published-100-years-ago.html">Singular Collection, Multiple Mysteries</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
            </div><!-- close split-3-layout -->

        
            <div class="split-3-layout layout theme-base">

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/education/index.html">Education &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002962756" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/26/upshot/q-and-a-about-student-debt.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/upshot/26up-debt-playback/26up-debt-playback-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Starting Out Behind: Q. and A. About Student Debt<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002960599" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/25/nyregion/de-blasio-offers-easier-access-to-city-money-for-special-education.html">De Blasio Offers Easier Access to City Money for Special Education</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002960917" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/25/us/shift-in-law-on-disability-and-students-shows-lapses.html">Shift in Law on Disability and Students Shows Lapses</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/garden/index.html">Home & Garden &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002963866" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/26/garden/melissa-leos-theater-in-the-round.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/garden/20140626-HOMEMADE-slide-BE29/20140626-HOMEMADE-slide-BE29-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        House Proud: Melissa Leo’s Theater in the Round<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002963994" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/garden/botanys-new-boys.html">Botany’s New Boys</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002963584" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/greathomesanddestinations/after-the-cows-left-home.html">After the Cows Left Home</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column last-column">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/opinion/index.html#sundayreview">Sunday Review &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002953432" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/22/opinion/sunday/lessons-for-climate-change-in-the-2008-recession.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/22/sunday-review/0622Environment/0622Environment-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Opinion: Lessons for Climate Change in the 2008 Recession<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002951578" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/22/sunday-review/hackers-find-new-ways-to-breach-computer-security.html">Hacker Tactic: Holding Data Hostage</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002953958" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/22/opinion/sunday/bipartisan-push-to-reform-sentencing-stalls-in-congress.html">Sentencing Reform Runs Aground</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
            </div><!-- close split-3-layout -->

        
            <div class="split-3-layout layout theme-base">

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/realestate/index.html">Real Estate &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002951083" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/22/realestate/my-lower-east-side.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/22/realestate/20140622-COVER-slide-JT6H/20140622-COVER-slide-JT6H-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        My Lower East Side<span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002961522" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/29/realestate/an-inwood-apartment-fits-the-bill.html">Tying Up a Deal on the Proverbial Shoestring</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002960379" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/29/realestate/mountain-lakes-nj-a-resort-getaway-to-call-home.html">Mountain Lakes, N.J.: A ‘Resort Getaway’ to Call Home</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/fashion/index.html">Fashion & Style &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002965675" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/27/fashion/paris-mens-fashion-review-carven-and-haider-ackermann.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/27/fashion/27fhaider-A/27fhaider-A-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Paris Men’s Fashion Review: Carven and Haider Ackermann<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002963536" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/fashion/italys-mens-wear-designers-stress-their-heritage.html">Italy Gets Real</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002963388" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/26/fashion/at-mens-fashion-weeks-white-sneakers-appear-on-and-off-the-runways.html">Which Way Do the Sneaker Prints Lead?</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column last-column">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/magazine/index.html">Magazine &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002957337" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/29/magazine/mark-sanfords-path-of-most-resistance.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/29/magazine/29sanford1/mag-29sanford-t_CA0-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Mark Sanford’s Path of Most Resistance<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002957341" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/29/magazine/whats-the-matter-with-eastern-kentucky.html">What’s the Matter With Eastern Kentucky?</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002957329" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/29/magazine/kendrick-lamar-hip-hops-newest-old-school-star.html">Kendrick Lamar, Hip-Hop’s Newest Old-School Star</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
            </div><!-- close split-3-layout -->

        
            <div class="split-3-layout layout theme-base">

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/automobiles/index.html">Automobiles &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002965123" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/27/business/gm-to-sell-chevrolet-cruzes-after-air-bag-recall.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/business/Motors-copy/Motors-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        G.M. to Resume Selling Chevrolet Cruzes<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002951341" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/22/automobiles/autoreviews/2014-mercedes-benz-s550-review.html">Packed With Technology, Prepped for Hyperbole</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002951389" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/22/automobiles/collectibles/for-his-second-act-a-hot-rod-builder-turns-back-the-clock.html">For His Second Act, a Hot Rod Builder Turns Back the Clock</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column ">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/pages/t-magazine/index.html">T Magazine &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002966008" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://tmagazine.blogs.nytimes.com/2014/06/26/patricia-voulgaris-fragments-photography-group-show-pdn/">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/26/t-magazine/26viewfinder-poggi-slide-OQ4D/26viewfinder-poggi-slide-OQ4D-thumbStandard.jpg" alt="" />
            </div>
        
        <h3 class="story-heading">
        Viewfinder | A Photographic Memory, Skewed<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002965751" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://tmagazine.blogs.nytimes.com/2014/06/26/family-recipe-closes-sunday-night-beloved-lower-east-side-nook/">Sunday Night Dinner | Closing Time at a Beloved Lower East Side Nook</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002965409" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://tmagazine.blogs.nytimes.com/2014/06/26/the-scene-paris-mens-fashion-week-rick-owens-springsummer-2015/">The Scene | Paris Men’s Fashion Week: Rick Owens Spring/Summer 2015</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
                    <div class="column last-column">

                        <section>
    <h2 class="section-heading">
        <a href="http://www.nytimes.com/upshot/">The Upshot &raquo;</a>
    </h2>
    <ul>
                    <li>
            <article class="story theme-summary" data-story-id="100000002952485" data-rank="0" data-collection-renderstyle="HpHedThumbWell">
    
    <a class="story-link" href="http://www.nytimes.com/2014/06/26/upshot/where-are-the-hardest-places-to-live-in-the-us.html">

                    <div class="thumb">
                <img src="http://static01.nyt.com/images/2014/06/23/upshot/usa-scenario-table-1403499930990/usa-scenario-table-1403499930990-thumbStandard-v2.png" alt="" />
            </div>
        
        <h3 class="story-heading">
        By Numbers: Where Are the Hardest Places to Live in the U.S.?<span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span>        </h3>
    </a>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002964010" data-rank="1" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/upshot/a-more-nuanced-breakdown-of-the-supreme-court.html">A More Nuanced Breakdown of the Supreme Court</a><span class="product-label theme-nyt-now "><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
                    <li>
            <article class="story" data-story-id="100000002964239" data-rank="2" data-collection-renderstyle="HpHedThumbWell">
        <h2 class="story-heading"><i class="icon"></i><a href="http://www.nytimes.com/2014/06/27/upshot/two-swing-groups-hold-key-to-gops-future.html">Two Swing Groups Hold Key to G.O.P.’s Future</a><span class="product-label theme-nyt-now hidden"><span class="visually-hidden">NYT Now</span><i class="icon dot-logo-icon"></i></span></h2>
</article>
            </li>
            </ul>
</section>

                    </div> <!-- close column -->

                                
            </div><!-- close split-3-layout -->

            </div>
</section><!-- close well section -->

    </div><!-- close ab-column -->

    <div class="c-column column">

        
        <section id="recommendations" class="recommendations">
    <div class="tabs-container">
        <ul class="tabs">
            <li data-type="most-emailed"><a href="http://www.nytimes.com/gst/mostemailed.html">Most Emailed</a></li><li data-type="most-viewed"><a href="http://www.nytimes.com/gst/mostpopular.html">Most Viewed</a></li><li data-type="recommended"><a href="http://www.nytimes.com/recommendations">Recommended for you</a></li>
        </ul>
    </div>
    <div class="tab-content most-emailed">
        <div class="loader"></div>
    </div>
    <div class="tab-content most-viewed">
        <div class="loader"></div>
    </div>
    <div class="tab-content recommended">
        <div class="loader"></div>
    </div>
</section>
        <div id="Box1" class="ad box1-ad"></div>
        <div id="HPPromo" class="ad hppromo-ad"></div>
        <div id="HPBottom1" class="ad hpbottom1-ad"></div>

        <section id="times-wire" class="times-wire">
    <header>
        <h2 class="section-heading"><a href="http://www.nytimes.com/timeswire/?src=twrhp">Times Wire</a></h2>
        <p class="heading-label">Most recent updates on NYTimes.com</p>
    </header>
    <div class="loader"></div>
</section>
        <div id="SponLinkHP" class="ad sponlinkhp-ad"></div>

    </div><!-- close c-column -->

</div><!-- close span-ab-layout -->

<div id="Bottom8" class="ad bottom8-ad"></div>
<div id="Bottom9" class="ad bottom9-ad"></div>

<img class="hidden" alt="." width="1" height="1" src="http://et.nytimes.com/pixel?subject=hpTest&sourceApp=nyt-v5"/>
                <div class="search-overlay"></div>
        </main><!-- close main -->
        <section id="site-index" class="site-index">

    <h2 class="section-heading">Site Index</h2>

    <nav id="site-index-navigation" class="site-index-navigation" role="navigation">

        <div class="split-6-layout layout">

                                                                                    
                    <div class="column">
                        <h3 class="menu-heading">News</h3>
                        <ul class="menu">

                                                                                                                                                                                                                                                
                                    <li>
                                        <a href="http://www.nytimes.com/pages/world/index.html">World</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/national/index.html">U.S.</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/politics/index.html">Politics</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/nyregion/index.html">New York</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/business/index.html">Business</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/technology/index.html">Technology</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/science/index.html">Science</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/health/index.html">Health</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/sports/index.html">Sports</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/education/index.html">Education</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/obituaries/index.html">Obituaries</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/todayspaper/index.html">Today's Paper</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/corrections/index.html">Corrections</a>
                                    </li>

                                                            
                        </ul>
                    </div><!-- close column -->

                                            
                    <div class="column">
                        <h3 class="menu-heading">Opinion</h3>
                        <ul class="menu">

                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/opinion/index.html">Today's Opinion</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/opinion/index.html#columnists">Op-Ed Columnists</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/opinion/index.html#editorials">Editorials</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/opinion/index.html#contributing">Contributing Writers</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/opinion/index.html#op-ed">Op-Ed Contributors</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/opinion/index.html#opinionator">Opinionator</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/opinion/index.html#letters">Letters</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/opinion/index.html#sundayreview">Sunday Review</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/opinion/index.html#takingNote">Taking Note</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/opinion/index.html#roomfordebate">Room for Debate</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://publiceditor.blogs.nytimes.com/">Public Editor</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/video/opinion/">Video: Opinion</a>
                                    </li>

                                                            
                        </ul>
                    </div><!-- close column -->

                                            
                    <div class="column">
                        <h3 class="menu-heading">Arts</h3>
                        <ul class="menu">

                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/arts/index.html">Today's Arts</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/arts/design/index.html">Art & Design</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://artsbeat.blogs.nytimes.com/">ArtsBeat</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/books/index.html">Books</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/arts/dance/index.html">Dance</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/movies/index.html">Movies</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/arts/music/index.html">Music</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/events/">N.Y.C. Events Guide</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/arts/television/index.html">Television</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/theater/index.html">Theater</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/arts/video-games/index.html">Video Games</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/video/arts/">Video: Arts</a>
                                    </li>

                                                            
                        </ul>
                    </div><!-- close column -->

                                            
                    <div class="column">
                        <h3 class="menu-heading">Living</h3>
                        <ul class="menu">

                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/automobiles/index.html">Automobiles</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/crosswords/">Crosswords</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/dining/index.html">Dining & Wine</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/education/index.html">Education</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/fashion/index.html">Fashion & Style</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/health/index.html">Health</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/garden/index.html">Home & Garden</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://jobmarket.nytimes.com/pages/jobs/index.html">Jobs</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/magazine/index.html">Magazine</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/events/">N.Y.C. Events Guide</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/realestate/index.html">Real Estate</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/t-magazine/index.html">T Magazine</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/travel/index.html">Travel</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/fashion/weddings/index.html">Weddings & Celebrations</a>
                                    </li>

                                                            
                        </ul>
                    </div><!-- close column -->

                                            
                    <div class="column">
                        <h3 class="menu-heading">Listings & More</h3>
                        <ul class="menu">

                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/ref/classifieds/">Classifieds</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/marketing/tools-and-services/">Tools & Services</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/topics/">Times Topics</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://publiceditor.blogs.nytimes.com/">Public Editor</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/events/">N.Y.C. Events Guide</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://tvlistings.nytimes.com/tvlistings/ZCGrid.do?aid=nyt">TV Listings</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/interactive/blogs/directory.html">Blogs</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://wordplay.blogs.nytimes.com/cartoons/">Cartoons</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/pages/multimedia/index.html">Multimedia</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://lens.blogs.nytimes.com/">Photography</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/video/">Video</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytstore.com/?action=click&region=Masthead&pgtype=Homepage&module=SectionsNav&version=BrowseTree&contentCollection=NYT%20Store&contentPlacement=2&t=qry542&utm_source=nytimes&utm_medium=HPB&utm_content=hp_browsetree&utm_campaign=NYT-HP">NYT Store</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/times-journeys/?utm_source=nytimes&utm_medium=HPLink&utm_content=hp_browsetree&utm_campaign=NYT-HP">Times Journeys</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/seeallnav">Subscribe</a>
                                    </li>

                                                                                            
                                    <li>
                                        <a href="http://www.nytimes.com/membercenter">Manage My Account</a>
                                    </li>

                                                            
                        </ul>
                    </div><!-- close column -->

                            
            <div class="column last-column">
                
<h3 class="menu-heading">Subscribe</h3>

<ul class="menu primary-menu">
    <li class="menu-label">Subscribe</li>
    <li class="times-premier">
        <i class="icon"></i>
        <a href="http://www.nytimes.com/tpnav">Times Premier</a>
    </li>

    <li class="home-delivery">
        <i class="icon"></i>
                    <a href="http://www.nytimes.com/hdleftnav">Home Delivery</a>
            </li>
    <li class="digital-subscriptions">
        <i class="icon"></i>
                    <a href="http://www.nytimes.com/digitalleftnav">Digital Subscriptions</a>
            </li>
    <li class="nyt-now">
        <i class="icon"></i>
        <a href="http://www.nytimes.com/nytnowindex">NYT Now</a>
    </li>
    <li class="nyt-opinion last-item">
        <i class="icon"></i>
        <a href="http://www.nytimes.com/opinionindex">NYT Opinion</a>
    </li>

</ul>

<ul class="menu secondary-menu">

    <li>
        <a href="http://www.nytimes.com/marketing/newsletters">Email Newsletters</a>
    </li>
    <li>
        <a href="https://myaccount.nytimes.com/mem/tnt.html">Alerts</a>
    </li>

    <li>
        <a href="http://www.nytimes.com/crosswordsleftnav">Crosswords</a>
    </li>
    <li>
                    <a href="http://www.nytimes.com/giftleftnav">Gift Subscriptions</a>
            </li>
    <li>
                    <a href="http://www.nytimes.com/corporateleftnav">Corporate Subscriptions</a>
            </li>
    <li>
                    <a href="http://www.nytimes.com/educationleftnav">Education Rate</a>
            </li>

</ul>
<ul class="menu secondary-menu">
    <li>
        <a href="http://www.nytimes.com/services/mobile/index.html">Mobile Applications</a>
    </li>
    <li>
                    <a href="http://eedition.nytimes.com/cgi-bin/signup.cgi?cc=37FYY">Replica Edition</a>
            </li>
                <li>
            <a href="http://subscribe.inyt.com">International New York Times</a>
        </li>
    
</ul>

            </div><!-- close column -->

        </div><!-- close split-6-layout -->

    </nav>

</section><!-- close site-index -->
        <footer id="page-footer" class="page-footer" role="contentinfo">
    <nav>
         <ul>
             <li>
                <a href="http://www.nytco.com" itemprop="copyrightNotice">
                    &copy; <span itemprop="copyrightYear">2014</span><span itemprop="copyrightHolder provider sourceOrganization" itemscope itemtype="http://schema.org/Organization" itemid="http://www.nytimes.com"><span itemprop="name"> The New York Times Company</span><meta itemprop="tickerSymbol" content="NYSE NYT"/></span>
                </a>
            </li>
            <li class="wide-viewport-item"><a href="http://www.nytimes.com/ref/membercenter/help/infoservdirectory.html">Contact Us</a></li>
            <li class="wide-viewport-item"><a href="http://www.nytco.com/careers">Work With Us</a></li>
            <li class="wide-viewport-item"><a href="http://www.nytimes.whsites.net/mediakit">Advertise</a></li>
            <li class="wide-viewport-item"><a href="http://www.nytimes.com/content/help/rights/privacy/policy/privacy-policy.html#pp">Your Ad Choices</a></li>
            <li><a href="http://www.nytimes.com/privacy">Privacy</a></li>
            <li><a href="http://www.nytimes.com/ref/membercenter/help/agree.html" itemprop="usageTerms">Terms of Service</a></li>
            <li class="wide-viewport-item last-item"><a href="http://www.nytimes.com/content/help/rights/sale/terms-of-sale.html">Terms of Sale</a></li>
         </ul>
    </nav>
    <nav class="last-nav">
        <ul>
            <li><a href="http://spiderbites.nytimes.com">Site Map</a></li>
            <li><a href="http://www.nytimes.com/membercenter/sitehelp.html">Help</a></li>
            <li><a href="https://myaccount.nytimes.com/membercenter/feedback.html">Site Feedback</a></li>
            <li class="wide-viewport-item last-item"><a href="http://www.nytimes.com/subscriptions/Multiproduct/lp5558.html?campaignId=37WXW">Subscriptions</a></li>
        </ul>
    </nav>
</footer>    </div><!-- close shell -->
    <script>
require(['foundation/main'], function () {
    require(['homepage/main']);
    require(['jquery/nyt', 'foundation/views/page-manager'], function ($, pageManager) {
        $(document).ready(function () {
            require(['http://static01.nyt.com/bi/js/tagx/tagx.js'], function () {
                pageManager.trackingFireEventQueue();
            });
        });
    });
});
</script>
<script>
require(['foundation/main'], function() {
    require(['shared/video/instances/videos']);
});
</script>

<script>
require(['foundation/main'], function() {
    require(['shared/video/instances/video-playlist']);
});
</script>


    <div id="Inv1" class="ad inv1-ad hidden"></div>
<div id="Inv2" class="ad inv2-ad hidden"></div>
<div id="Inv3" class="ad inv3-ad hidden"></div>
<div id="ab1" class="ad ab1-ad hidden"></div>
<div id="ab2" class="ad ab2-ad hidden"></div>
<div id="ab3" class="ad ab3-ad hidden"></div>
<div id="Anchor" class="ad anchor-ad hidden"></div>
<script type="text/javascript">window.NREUM||(NREUM={});NREUM.info={"beacon":"beacon-6.newrelic.com","licenseKey":"b5bcf2eba4","applicationID":"4346260","transactionName":"YwFXZhRYVhAEVUZcX1pLYEAPFlkTFRhCXUA=","queueTime":0,"applicationTime":461,"ttGuid":"","agentToken":"","userAttributes":"","errorBeacon":"bam.nr-data.net","agent":"js-agent.newrelic.com\/nr-411.min.js"}</script></body>
</html>
