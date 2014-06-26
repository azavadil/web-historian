<!DOCTYPE html>


<!--[if lte IE 8]><html class="ie8" data-ng-app="udacity"><![endif]-->
<!--[if IE]><![if gt IE 8]><![endif]-->
<html data-ng-app="udacity">
<!--[if IE]><![endif]><![endif]-->


<head>
	<link rel="stylesheet" type="text/css" href="//cloud.typography.com/7419072/725522/css/fonts.css" />
	
	<title>Advance Your Career Through Project-Based Online Classes - Udacity</title>
	<meta charset="UTF-8">
	<link rel="shortcut icon" href="/favicon.ico?3bd5401efcbb6d32d029f55685f9901e" />
	<meta name="application-name" content="Udacity"/>
	<meta name="msapplication-TileColor" content="#FFFFFF"/>
	<meta name="msapplication-TileImage" content="/media/img/logos/udacity/windows_tile/udacity-full-144x144.png"/>

	<meta name="description" content="Discover online classes taught by top instructors and industry experts. Take courses at your own pace.">
	
	<meta name="robots" content="noodp" />
	<meta name="google-site-verification" content="ELX2btu3VElBKIdvkGj5ESBnJh_Dg9PnWjuCwVkPEkA" />
	<meta http-equiv="X-UA-Compatible" content="requiresActiveX=true"/>
	<meta name="apple-itunes-app" content="app-id=819700933">
	
	<link type="text/plain" rel="author" href="http://udacity.com/humans.txt" />

	
		<link rel="stylesheet" type="text/css" href="/media/css/udacity/udacity.min.css?3bd5401efcbb6d32d029f55685f9901e">

	
	<!--[if lt IE 9]>
		<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
		<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
	<script type="text/javascript">
		if (!window.console) {
			window.console = {};
		}
		if (!window.console.log) {
			window.console.log = function () {};
		}
		if (!window.console.error) {
			window.console.error = function () {};
		}
		if (!window.console.warn) {
			window.console.warn = function () {};
		}
	</script>

	<script type="text/javascript">
		var account = {"first_name": null, "last_name": null, "_registered": false, "email": null, "key": "1653929138", "_image_url": "//robohash.org/udacity-1653929138.png", "nickname": "", "_enrollments": [], "site_preferences": null};

		// for Google analytics
		var _gaq = _gaq || [];
		_gaq.push(['_setAccount', 'UA-28524234-1']);
		_gaq.push(['_setDomainName', 'udacity.com']);
		_gaq.push(['_setCustomVar', 1, 'isUdacityRegistered', account._registered ? 'Yes' : 'No', 1]);
		_gaq.push(['_trackPageview', location.pathname + location.search + location.hash]);
		(function() {
		  var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		  ga.src = ('https:' == document.location.protocol ? 'https://' : 'http://') + 'stats.g.doubleclick.net/dc.js';
		  ga.onerror = function() {
		    ga.onerror = null;
		    ga.onreadystatechange = null;
		    var push = function() {
		      for (var i = 0; i < arguments.length; ++i) {
		        var a = arguments[i];
		        if ('object' !== typeof a || 3 !== a.length || '_set' !== a[0]
		          || 'hitCallback' !== a[1] || 'function' !== typeof a[2]) { continue; }
		        a[2].call();
		      }
		    }
		    for (var i = 0; i < _gaq.length; ++i) { push(_gaq[i]); }
		    _gaq = [];
		    _gaq.push = push;
		  };
		  ga.onreadystatechange = function () {
		    if (ga.readyState == 'loaded') {
		      ga.onerror();
		    }
		  };
		  var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
		})();
	</script>

		<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
		<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.16/angular.min.js"></script>

	<script src="//cdn.optimizely.com/js/655050218.js"></script>
	
	<script>
	(function () {		
		var _rollbarConfig = {
				'accessToken': "c02b97bf97ca472db50f5fa8db601e97",
				'captureUncaught': true,
				'payload': {
						'environment': (function () {
							if (window.location.host.indexOf('localhost') !== -1) {return 'localhost';}
							if (window.location.host.indexOf('abcinth') !== -1) {return 'abcinth';}
							if (window.location.host.indexOf('staging') !== -1) {return 'staging';}
							if (window.location.host.indexOf('udacity.com') !== -1) {return 'production';}
						}())
				}
		};
		!function(a,b){function c(b){this.shimId=++h,this.notifier=null,this.parentShim=b,this.logger=function(){},a.console&&void 0===a.console.shimId&&(this.logger=a.console.log)}function d(b,c,d){!d[4]&&a._rollbarWrappedError&&(d[4]=a._rollbarWrappedError,a._rollbarWrappedError=null),b.uncaughtError.apply(b,d),c&&c.apply(a,d)}function e(b){var d=c;return g(function(){if(this.notifier)return this.notifier[b].apply(this.notifier,arguments);var c=this,e="scope"===b;e&&(c=new d(this));var f=Array.prototype.slice.call(arguments,0),g={shim:c,method:b,args:f,ts:new Date};return a._rollbarShimQueue.push(g),e?c:void 0})}function f(a,b){if(b.hasOwnProperty&&b.hasOwnProperty("addEventListener")){var c=b.addEventListener;b.addEventListener=function(b,d,e){c.call(this,b,a.wrap(d),e)};var d=b.removeEventListener;b.removeEventListener=function(a,b,c){d.call(this,a,b?b._wrapped:b,c)}}}function g(a,b){return b=b||this.logger,function(){try{return a.apply(this,arguments)}catch(c){b("Rollbar internal error:",c)}}}var h=0;c.init=function(a,b){var e=b.globalAlias||"Rollbar";if("object"==typeof a[e])return a[e];a._rollbarShimQueue=[],a._rollbarWrappedError=null,b=b||{};var h=new c;return g(function(){if(h.configure(b),b.captureUncaught){var c=a.onerror;a.onerror=function(){var a=Array.prototype.slice.call(arguments,0);d(h,c,a)};var g,i,j=["EventTarget","Window","Node","ApplicationCache","AudioTrackList","ChannelMergerNode","CryptoOperation","EventSource","FileReader","HTMLUnknownElement","IDBDatabase","IDBRequest","IDBTransaction","KeyOperation","MediaController","MessagePort","ModalWindow","Notification","SVGElementInstance","Screen","TextTrack","TextTrackCue","TextTrackList","WebSocket","WebSocketWorker","Worker","XMLHttpRequest","XMLHttpRequestEventTarget","XMLHttpRequestUpload"];for(g=0;g<j.length;++g)i=j[g],a[i]&&a[i].prototype&&f(h,a[i].prototype)}return a[e]=h,h},h.logger)()},c.prototype.loadFull=function(a,b,c,d){var e=g(function(){var a=b.createElement("script"),e=b.getElementsByTagName("script")[0];a.src=d.rollbarJsUrl,a.async=!c,a.onload=f,e.parentNode.insertBefore(a,e)},this.logger),f=g(function(){if(void 0===a._rollbarPayloadQueue)for(var b,c,d,e,f=new Error("rollbar.js did not load");b=a._rollbarShimQueue.shift();)for(d=b.args,e=0;e<d.length;++e)if(c=d[e],"function"==typeof c){c(f);break}},this.logger);g(function(){c?e():a.addEventListener?a.addEventListener("load",e,!1):a.attachEvent("onload",e)},this.logger)()},c.prototype.wrap=function(b){try{if("function"!=typeof b)return b;if(b._isWrap)return b;if(!b._wrapped){b._wrapped=function(){try{return b.apply(this,arguments)}catch(c){throw a._rollbarWrappedError=c,c}},b._wrapped._isWrap=!0;for(var c in b)b.hasOwnProperty(c)&&(b._wrapped[c]=b[c])}return b._wrapped}catch(d){return b}};for(var i="log,debug,info,warn,warning,error,critical,global,configure,scope,uncaughtError".split(","),j=0;j<i.length;++j)c.prototype[i[j]]=e(i[j]);var k="//d37gvrvc0wt4s1.cloudfront.net/js/v1.0/rollbar.min.js";_rollbarConfig.rollbarJsUrl=_rollbarConfig.rollbarJsUrl||k;var l=c.init(a,_rollbarConfig);l.loadFull(a,b,!1,_rollbarConfig)}(window,document);
	}());
	</script>
	

	
	<link rel="stylesheet" href="/media/css/standalone/udacity/homepage/homepage.min.css?3bd5401efcbb6d32d029f55685f9901e"type="text/css">
	<!--[if lt IE 9]><style>.reveal{display: none;}
		.super-header-footer{background:transparent; zoom: 1;
		filter:progid:DXImageTransform.Microsoft.gradient(startColorstr=#CCFFFFFF,endColorstr=#CCFFFFFF);}
	</style><![endif]-->

	<meta name="fragment" content="!">

</head>
<body data-ng-class="{'responsive': responsivenessIsEnabled, 'non-responsive': !responsivenessIsEnabled}" data-ng-controller="siteFrame" data-modal-anti-scroll-helper data-ng-class="{'modal-open': isModalActive()}">
	<!-- Google Tag Manager -->
	<script>
	  window.dataLayer = [];
	</script>
	<noscript><iframe src="//www.googletagmanager.com/ns.html?id=GTM-NKKCFH"
	height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
	<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
	new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
	j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
	'//www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
	})(window,document,'script','dataLayer','GTM-NKKCFH');</script>
	<!-- End Google Tag Manager -->


	
	<div id="page-content">
		
	<div class="container" id="homepage-header-announcement">
		<div class="row" style="margin-top: 52px;">
			<div class="col-xs-10">
				<img class="media-object pull-left" style="margin-right:12px" alt="nanodegree icon" src="//lh4.ggpht.com/c2X3alVb2L_8xyXbaKkr_2y0EX9wM7prndqbeq6xBhzCILMZO2ABm9WQYFh5DJ1mzmNuIQJWok7Jg5pqr3etfo5XxOE4=s0#w=45&h=45">
				<div class="media-body">
					<span class="h3" style="margin-right:24px">Announcing <a href="/nanodegrees">nanodegrees</a></span>
					<span>
						Credentials built by industry leaders to advance your career
					</span>
				</div>
			</div>
			<div class="col-xs-2">
				<a class="btn btn-default btn-min-width-sm pull-right" href="/nanodegrees">
					See details
				</a>
			</div>
		</div>
	</div>

		
		<header class="navbar site-nav navbar-inverse navbar-fixed-top navbar-static-top" role="navigation">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-collapse">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					
						<a class="logo navbar-brand" href="/" id="header-logo">
							<img alt="Udacity Logo" src="//lh4.ggpht.com/LUgsz3XTdD-dW9qCenNcFZWaBKM6At_MbMjODMCJOC8ZoR4hIm_rVBQghBmk5kQ-kRa66yhEQT0BH88gUmwX=s170" style="width:85px;">
						</a>
					
				</div>

				<nav class="navbar-collapse collapse text-center-xs" id="navbar-collapse" role="navigation">
					
						<!-- Logged out dropdowns -->
						<ul class="nav navbar-nav navbar-right ng-cloak" data-ng-cloak>
							<li>
								<a id="sign-in" href="" onclick="window.location.href='/account/auth#!/signin?next='+encodeURIComponent(window.location.href)">Sign In</a>
							</li>
							<li>
								<a href="" onclick="window.location.href='/account/auth#!/signup?next='+encodeURIComponent(window.location.href)">Sign Up</a>
							</li>
						</ul>
					
					
					
					
						<!-- Course catalog link and beyond -->
						<ul class="nav navbar-nav navbar-right ng-cloak" data-ng-cloak>
								<li>
									<a class="dropdown-toggle" href="/courses#!/all">Course Catalog</a>
								</li>
						</ul>
						<!-- END Course catalog link and beyond -->
					

					
		<ul class="nav nav-pills navbar-nav navbar-right ng-cloak">
			<li>
				<a href="/what-we-offer">What We Offer</a>
			</li>
		</ul>


				</nav>
			</div>
		</header>

		
















<div class="super-header-wrapper">
	<!-- Why this? The banner uses a background image (and background-size: cover), but background
		images load last. If we load a "real" image here, it will get loading priority, and then browser
		caching will fill in the background image for the banner div as soon as it loads. #madHax -->

	<img src="//lh5.ggpht.com/3tsdy7oUnrD2Ts72pBp_3ZVW-bChw8jumeN-OaMMZsLcbbeiuOH_R59Dlozz9Cp4sD3bCGS1CtBX3i-uNGW0=s0#w=1570&amp;h=675" class="black-hole">
	<div class="super-header" style="background-image:url('//lh5.ggpht.com/3tsdy7oUnrD2Ts72pBp_3ZVW-bChw8jumeN-OaMMZsLcbbeiuOH_R59Dlozz9Cp4sD3bCGS1CtBX3i-uNGW0=s0#w=1570&amp;h=675');">
		<div class="container">
			<div class="super-header-content row row-gap-huge">
				<div class="col-xs-6 pull-right">
					<h1 class="banner-title text-light" style="font-size:40px; font-weight: normal; line-height: 1.3em; margin: 90px 0 30px 0;">
						Thanks to <strong>UDACITY</strong>,<br>I landed <span style="color: orange;">my dream job</span>
					</h1>
					<p class="text-large text-light" style="margin-bottom: 45px;">
						<span style="text-shadow: 0px 0px 20px #000000;">Megan transitioned from a career as a medical researcher to working as a software developer after discovering her passion for tech through Udacity&#39;s project-based Intro to Computer Science course.</span>
					</p>
					<p>
						<a class="btn btn-primary btn-lg" href="/courses#!/all">View Course Catalog</a>
					</p>
				</div>
			</div>
			<div class="super-header-footer row row-gap-huge text-center">
				<div class="col-xs-4">
					<span class="sprite sprite-coach"></span><br>
					Take online computer science courses<br>
					with personalized support
				</div>
				<div class="col-xs-4">
					<span class="sprite sprite-rocket"></span><br>
					Build cool projects<br>
					to showcase your skills
				</div>
				<div class="col-xs-4">
					<span class="sprite sprite-cert"></span><br>
					Earn certificates<br>
					recognized by industry
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container u-banner ">
	<div class="u-banner-cut"></div>
	<div class="sprite sprite-u-banner centered-hr-float" id="pull-tab"></div>
</div>

<div class="row row-gap-medium"></div>
<div class="section-inverse section-inverse-space text-inverse">
	<div class="container">
		<div class="row">
			<div class="col-xs-12">
				<h1 class="text-center">Featured courses</h1>
				<div data-course-card-fetcher data-card-courses="['cs101', 'ud859','ud359','ud036']"></div>
			</div>
		</div>
	</div>
</div>

<div class="container" id="ping-pong-container">
	<div class="row row-gap-huge">
		<div class="col-xs-6 portfolio-anim" id="portfolio">
			<img class="img-responsive image-responsive-centered"
				src="//lh4.ggpht.com/5FZtGjSIu4VHgNM_DUcWsbnN_palMc__IX_EaEWc5XInm-72Ql-BBVc3EqoPDizD_Deqfk3p6YrNOZDykUc=s0#w=553&h=350"
				alt="projects with ongoing feedback">
			<span class="reveal reveal-1"></span>
			<span class="reveal reveal-2"></span>
			<span class="reveal reveal-3"></span>
			<span class="reveal reveal-4"></span>
		</div>
		<div class="col-xs-6">
			<h1>Build your portfolio</h1>
			<p class="text-large">
				Our courses are highly interactive and project-based to
				ensure you acquire key skills and build a portfolio to show
				off to current or potential employers.
			</p>
			<p class="text-large">
				<img src="//lh5.ggpht.com/--zeBOn4dUhtmxmSRgErdWffGv0EVyxjXtoBpV5Ghpt1p5uOAZgPAFSSdYLckWNk3yENDsx7N3KNowpsoJfr=s30#w=60&h=60"
				alt="petals" class="img-initial"><a href="/course-experience"><strong>Learn more about course projects</strong></a>
			</p>
		</div>
	</div>
	<hr class="hr-gradient">

	<div class="row">
		<div class="col-xs-6">
			<h1>Choose your path</h1>
			<p class="text-large">
				We offer a variety of tech courses to match your interests and skill level. Courses are
				self-paced and available 24/7, meaning you can work on them at a pace that accommodates
				your schedule.
			</p>
			<p class="text-large">
				<img src="//lh3.ggpht.com/ur_h6rshLlHPcNsRVFNLCgJBZGCTwrhx0FJJ_FoO3f-M4zqnJ4j3Tn6CBTTuT1H6QIHuhmlu5WzzZZM5ElA=s30#w=60&h=60"
				alt="petals" class="img-initial"><a href="/what-we-offer"><strong>Learn more about how Udacity works</strong></a>
			</p>
		</div>
		<div class="col-xs-6" id="tracks">
			<div class="tracks-anim">
				<img class="img-responsive image-responsive-centered tracks-anim"
					src="//lh5.ggpht.com/zMHBagQEI2naAGAmN0bXcUCBF6mCX0tWgX9P6PNswYx8G8mO6d-7BiKOSRhfkvfKYbf-OScVh7xOV_F5xw=s0#w=553&h=350"
					alt="projects with ongoing feedback">
				 <img class="tracks-anim-needle"
				 	src="//lh4.ggpht.com/cG9t5hEyGHxkM-Vxpc1jxEII8xqldouZxhj3IUx5eloxtna7zHFvh-a0z65yOK8Jyyun5XCZ5UoMrLdPOGM=s0#w=62&h=84"
				 	alt="projects with ongoing feedback">
				<img class="tracks-anim-track"
					src="//lh3.ggpht.com/-MdBTOqZRoETKMqrKH4HQjzofy_GLOT9tSw_IXGXLfo7qXEwgMD_pXigRsCmRnF_1p9z3Hn8hbYwaW9QVms=s0#w=200&h=120"
					alt="projects with ongoing feedback">
				<img class="tracks-anim-track"
					src="//lh5.ggpht.com/gsXFlAbZ7PtGyQXw6Ko-Tp8oVCSxcJPZsxNkNWFbOt0YPyJk8EWMVD0KC3lgOGRYrd8_2VbEtV7gAb74bEc=s0#w=200&h=120"
					alt="projects with ongoing feedback" style="display:none;">
			</div>
		</div>
	</div>

	<hr class="hr-gradient">

	<div class="row">
		<div class="col-xs-6" id="partners">
			<div class="row row-gap-small">
				<div class="col-xs-4">
					<img style="opacity: 0;"
						src="//lh6.ggpht.com/-yuFH1kIdXsNj1YbfRwQsjBxSd1UD2V7Sjc_ZGgSRreExpxr-Jp5n4coqEFtUC73T4yrv5Qtri1E6gHEn3o=s0#w=150&h=75"
						alt="Google"
						class="img-responsive img-responsive-centered">
				</div>
				<div class="col-xs-4">
					<img style="opacity: 0;"
						src="//lh3.ggpht.com/vXfu11Jf-CmPOryxD-gXOcLf3kAmHlVrpv__ncloM1EwudDJbCX2w81B4yWB61QthkthDvl5AWwea76wAQ=s0#w=150&h=75"
						alt="Cloudera"
						class="img-responsive img-responsive-centered">
				</div>
				<div class="col-xs-4">
					<img style="opacity: 0;"
						src="//lh5.ggpht.com/ZzPeRiPhzLiFaLNpw5pXS2r9pLKnwX2JEgXZIv9NTphOQXdnFC57jEHSaThAc1jtkGh2irkasUuUxzJplXhE=s0#w=150&h=75"
						alt="AT&amp;T"
						class="img-responsive img-responsive-centered">
				</div>
			</div>
			<div class="row row-gap-small">
				<div class="col-xs-4">
					<img style="opacity: 0;"
						src="//lh3.ggpht.com/9BgsI73ZlzCDqSgIUPns2TvezvXCSbT200SNQoDBCwz_LdWna3n0VpmeRce9l7VUvylT_uKkW5z8SFxToiU=s0#w=150&h=75"
						alt="Salesforce"
						class="img-responsive img-responsive-centered">
				</div>
				<div class="col-xs-4">
					<img style="opacity: 0;"
						src="//lh5.ggpht.com/FUEzybhbu9zDuIza0tIVp73TqH4JhTcBu5239sM-X6wvV-aHPqGSIEKQ8bHOv2E0HXdXlSJ_GTnuIYctuik=s0#w=150&h=75"
						alt="MongoDB"
						class="img-responsive img-responsive-centered">
				</div>
				<div class="col-xs-4">
					<img style="opacity: 0;"
						src="//lh4.ggpht.com/sCZWuJX4fSrpVoTQDhosEGlO0yQ3msslcfjBWo48RAri8TP5D32-ven4-dHbjyEZVewf2XbmgMrPaOMGmbES=s0#w=150&h=75"
						alt="AutoDesk"
						class="img-responsive img-responsive-centered">
				</div>
			</div>
			<div class="row row-gap-small">
				<div class="col-xs-4 pull-right">
					<img style="opacity: 0;"
						src="//lh3.ggpht.com/dN-0YaWc7D1h_D003pQxuat6DVUxk14vmtGuzHwSDdu2hyvisIuxHO6ECjdXLqrMD-pfb5qPePpi3LaLMyk=s0#w=150&h=75"
						alt="nvidia"
						class="img-responsive img-responsive-centered">
				</div>
			</div>
		</div>
		<div class="col-xs-6 pull-right">
			<h1>Learn from the best</h1>
			<p class="text-large">
				Our online courses are built in partnership with technology leaders and are relevant to
				industry needs. Upon completing a Udacity course, you'll receive a verified completion
				certificate recognized by industry leaders.
			</p>
		</div>
	</div>

	<hr class="hr-gradient">

	<div class="row">
		<div class="col-xs-6">
			<h1>Receive personalized coaching</h1>
			<p class="text-large">
				Learning is a collaborative process, and we're here to
				provide you with guidance every step of the way. We'll help
				you select the right class, navigate challenging content, and
				improve your projects and code.
			</p>
			<p class="text-large">
				<img src="//lh5.ggpht.com/--zeBOn4dUhtmxmSRgErdWffGv0EVyxjXtoBpV5Ghpt1p5uOAZgPAFSSdYLckWNk3yENDsx7N3KNowpsoJfr=s30#w=60&h=60"
				alt="petals" class="img-initial"><a href="/course-experience#coaches"><strong>Learn more about the coaching experience</strong></a>
			</p>
		</div>
		<div class="col-xs-6 coach-anim" id="coach">
			<img class="img-responsive image-responsive-centered"
				src="//lh3.ggpht.com/ZtLKpVIz1oZCWjWi_McvBLPPGeISNyr5c0VfxOw9OkWy408P8JPTiy6AAd9kk0pP5mYw6uIuQGLbv99-zFo=s0#w=553&h=350"
				alt="projects with ongoing feedback">
			<span class="reveal reveal-1"></span>
			<span class="reveal reveal-2"></span>
			<span class="reveal reveal-3"></span>
		</div>
	</div>
</div>

<div class="container">
	<hr class="hr-gradient hr-slim">
</div>
<div class="section">
	<div class="container">
		<div class="row">
			<div class="col-xs-12 text-center">
				<a class="btn btn-primary btn-lg" href="/courses#!/all">View Course Catalog</a>
			</div>
		</div>
	</div>
</div>





	
			<div id="footer-push"></div>
</div>













<div id="footer">
	<div class="section section-standout section-slim">
		<div class="container">
			<div class="row row-gap-huge hidden-xs"></div>
			<!-- NON-RESPONSIVE FOOTER -->
			<div class="row hidden-xs hidden-sm">
				<div class="col-xs-3 col-xs-offset-2">
					
<h4>Information</h4>
<p class="caption">
	<a href="/what-we-offer" id="how-it-works-footer-link">What We Offer</a>
	<br>
	<a href="/course-experience">Course Experience</a>
	<br>
	<a href="/nanodegrees">Nanodegrees</a>
	<br>
	<a href="/organizations">Udacity for Organizations</a>
	<br>
	<a href="/faq">Help and FAQ</a>
	<br>
	<a href="/feedback/signup">Feedback Program</a>
</p>

				</div>
				<div class="col-xs-2">
					
<h4>Community</h4>
<p class="caption">
	<a href="http://blog.udacity.com">Blog</a>
	<br>
	<a href="http://www.meetup.com/Udacity/">Meetups</a>
	<br>
	<a href="/press">News &amp; Media</a>
</p>

				</div>
				<div class="col-xs-2">
					
<h4>Udacity</h4>
<p class="caption">
	<a href="/us">About</a>
	<br>
	<a href="/jobs">Jobs</a>
	<br>
	<a href="/contact">Contact Us</a>
	<br>
	<a href="/legal/tos">Legal</a>
</p>

				</div>
				<div class="col-xs-3">
					
<h4>Follow us on</h4>
<a href="https://www.facebook.com/Udacity"><span class="sprite sprite-social sprite-facebook"></span></a>
<a href="https://twitter.com/udacity"><span class="sprite sprite-social sprite-twitter"></span></a>
<a href="https://plus.google.com/+Udacity/posts"><span class="sprite sprite-social sprite-gplus"></span></a>
<a href="https://www.linkedin.com/company/udacity"><span class="sprite sprite-social sprite-linkedin"></span></a>

					
	<h4>Mobile Apps</h4>
	<div class="row">
		<div class="col-xs-12">
			<div class="text-center-xs">
				<a href="https://itunes.apple.com/us/app/id819700933?mt=8"><img alt="Apple store"
					class="img-initial mobile-button"
					src="//lh6.ggpht.com/5mY-J8xINNmZ4x_6mbNYmhDWFT_qzG4q4QA2jPzRfiqRjUticf5u0eEEATtX04gbr_KrDSx8SDDBpGRHAWU=s0#w=300&h=88"></a>
				<a href="https://play.google.com/store/apps/details?id=com.udacity.android"><img alt="Google Play" class="mobile-button"
					src="//lh5.ggpht.com/Zb2s5Ho_mzDPnb9dBDIqQPpwFrxz1e902ksTnir8Cs_KdrYLvN_TLVK1pmKGbMPgolJ2wIlY23yI9OODDss=s0#w=300&h=88"></a>
			</div>
		</div>
	</div>

					
<div class="row row-gap-small">
	<div class="col-xs-12 text-muted">&copy; 2011-2014 Udacity, Inc.</div>
</div>

				</div>
			</div>

			<!-- RESPONSIVE FOOTER -->
			<div class="row visible-xs visible-sm text-center-xs">
				<div class="col-sm-4 col-xs-12">
					
<h4>Information</h4>
<p class="caption">
	<a href="/what-we-offer" id="how-it-works-footer-link">What We Offer</a>
	<br>
	<a href="/course-experience">Course Experience</a>
	<br>
	<a href="/nanodegrees">Nanodegrees</a>
	<br>
	<a href="/organizations">Udacity for Organizations</a>
	<br>
	<a href="/faq">Help and FAQ</a>
	<br>
	<a href="/feedback/signup">Feedback Program</a>
</p>

				</div>
				<div class="col-sm-4 col-xs-12">
					
<h4>Community</h4>
<p class="caption">
	<a href="http://blog.udacity.com">Blog</a>
	<br>
	<a href="http://www.meetup.com/Udacity/">Meetups</a>
	<br>
	<a href="/press">News &amp; Media</a>
</p>

				</div>
				<div class="col-sm-4 col-xs-12">
					
<h4>Udacity</h4>
<p class="caption">
	<a href="/us">About</a>
	<br>
	<a href="/jobs">Jobs</a>
	<br>
	<a href="/contact">Contact Us</a>
	<br>
	<a href="/legal/tos">Legal</a>
</p>

				</div>
				<div class="col-sm-12 col-xs-12">
					
<h4>Follow us on</h4>
<a href="https://www.facebook.com/Udacity"><span class="sprite sprite-social sprite-facebook"></span></a>
<a href="https://twitter.com/udacity"><span class="sprite sprite-social sprite-twitter"></span></a>
<a href="https://plus.google.com/+Udacity/posts"><span class="sprite sprite-social sprite-gplus"></span></a>
<a href="https://www.linkedin.com/company/udacity"><span class="sprite sprite-social sprite-linkedin"></span></a>

					
	<h4>Mobile Apps</h4>
	<div class="row">
		<div class="col-xs-12">
			<div class="text-center-xs">
				<a href="https://itunes.apple.com/us/app/id819700933?mt=8"><img alt="Apple store"
					class="img-initial mobile-button"
					src="//lh6.ggpht.com/5mY-J8xINNmZ4x_6mbNYmhDWFT_qzG4q4QA2jPzRfiqRjUticf5u0eEEATtX04gbr_KrDSx8SDDBpGRHAWU=s0#w=300&h=88"></a>
				<a href="https://play.google.com/store/apps/details?id=com.udacity.android"><img alt="Google Play" class="mobile-button"
					src="//lh5.ggpht.com/Zb2s5Ho_mzDPnb9dBDIqQPpwFrxz1e902ksTnir8Cs_KdrYLvN_TLVK1pmKGbMPgolJ2wIlY23yI9OODDss=s0#w=300&h=88"></a>
			</div>
		</div>
	</div>

					
<div class="row row-gap-small">
	<div class="col-xs-12 text-muted">&copy; 2011-2014 Udacity, Inc.</div>
</div>

				</div>
			</div>
			<div class="row row-gap-huge hidden-xs"></div>
		</div>
	</div>

	

	</div>

	
		<script type="text/javascript" src="/media/js/external/libs.min.js?3bd5401efcbb6d32d029f55685f9901e"></script>
<script type="text/javascript" src="/media/js/udacity/udacity.min.js?3bd5401efcbb6d32d029f55685f9901e"></script>

	
	
	
	
	<script type="text/javascript">
			// Add rotations to jquery
		$.fn.animateRotate = function(angle, duration, easing, complete) {
			var getRotationDegrees = function(obj) {
				var matrix = obj.css("-webkit-transform") ||
				obj.css("-moz-transform")    ||
				obj.css("-ms-transform")     ||
				obj.css("-o-transform")      ||
				obj.css("transform");
				if(matrix !== 'none') {
					var values = matrix.split('(')[1].split(')')[0].split(',');
					var a = values[0];
					var b = values[1];
					var angle = Math.round(Math.atan2(b, a) * (180/Math.PI));
				} else { var angle = 0; }
				return angle;
			};

			return this.each(function() {
				var $elem = $(this);
				$({deg: getRotationDegrees($elem)}).animate({deg: angle}, {
					duration: duration,
					easing: easing,
					step: function(now) {
						$elem.css({transform: 'rotate(' + now + 'deg)'});
					},
					complete: complete || $.noop
				});
			});
		};

		//	The animations for the homepage
		//	In a closure, so nothing should leak out.
		(function(){
			$('#partners img').css({'opacity': '0'});
			// The animation functions for each of the three animations.
			var animatePartners = function(anim){
				$('img', anim.el).each(function( idx ) {
					$(this).delay((idx * 400)).animate({'opacity': '1'});
				});
			};
			var animateTracks = function(anim){
				$('.tracks-anim-needle', anim.el)
				.animateRotate(-60, 1100, 'swing', function(){
					$('.tracks-anim-needle', anim.el)
					.animateRotate(-25, 800, 'swing', function(){
						$('.tracks-anim-needle', anim.el).animateRotate(-37, 600, 'swing');
					});
				});
			};
			var animatePortfolio = function(anim){
				$('.reveal', anim.el).each(function( idx ) {
					$(this).delay((idx * 400)).animate({'opacity': '0'});
				});
			};
			var animateCoach = function(anim){
				$('.reveal', anim.el).each(function( idx ) {
					$(this).delay((idx * 400)).animate({'opacity': '0'});
				});
			};

			// The reset functions for each of the three animations.
			var resetPartners = function(anim){
				$('#partners img').css({'opacity': '0'});
			};
			var resetTracks = function(anim){
				$('.tracks-anim-needle', anim.el).stop(true, true).animateRotate(60, 1, 'linear');
			};
			var resetPortfolio = function(anim){
				$('.reveal', anim.el).stop(true, true).css('opacity', '1');
			};
			var resetCoach = function(anim){
				$('.reveal', anim.el).stop(true, true).css('opacity', '1');
			};

			// Definitions for each of the animations we're going to run
			var animations = [
				{
					hasFired: false,
					el: $('#partners'),
					anim: animatePartners,
					animReset: resetPartners
				},
				{
					hasFired: false,
					el: $('#tracks'),
					anim: animateTracks,
					animReset: resetTracks
				},
				{
					hasFired: false,
					el: $('#portfolio'),
					anim: animatePortfolio,
					animReset: resetPortfolio,
				},
				{
					hasFired: false,
					el: $('#coach'),
					anim: animateCoach,
					animReset: resetCoach
				}
			];

			var animationCheck = function () {
				// Yeah, this could be more efficient, but it doesn't seem to really impact
				// performace as we don't have a lot else going on during scroll.
				var winScrollTop = $(window).scrollTop();
				var winHeight = $(window).height();
				// Loop over the animations
				for(var i = 0; i < animations.length; i++){
					var a = animations[i];
					// Normally animations are triggered when the element clears
					// the bottom, you can change this by setting a triggerOfset
					var triggerOffset = a.triggerOffset || 0;
					// If they have not been fired and the bottom of the animation clears
					if (!a.hasFired &&
						(winHeight - (a.el.offset().top+a.el.innerHeight() - winScrollTop)) > (0+triggerOffset)
					){
						a.anim(a);
						a.hasFired = true;
					}
					// If the top of the animation is out of view and has been fired reset to start.
					if(a.hasFired && (a.el.offset().top - winScrollTop) > winHeight){
						a.animReset(a);
						a.hasFired = false;
					}
				}
			}

			// Continuous image rotation for the tracks
			var imageSwap = function(base, images, speed){
				speed = speed || 500;
				var images = $(base).find(images);
				var current = images.first();
				var next = images.last();
				current.fadeOut(400, function(){next.insertBefore(current).fadeIn(400);});
			};

			// Init the tracks animation
			$('.tracks-anim-track').hide();
			$('.tracks-anim-track').first().show();

			// Set those tracks to go!
			window.setInterval(function(){imageSwap('.tracks-anim', '.tracks-anim-track');}, 6000);

			// On window scroll, calculate if animations should run and fire them off if they need to.
			$(window).scroll(_.throttle(animationCheck, 300));
			$(document).ready(animationCheck);  // Init it in case any are already past their triggers.

			var slideBanner = function(){
				var el = $('.sprite-u-banner');
				el.animate(
					{'top': '0%'},
					700,
					function(){
						el.animate({'top': '-5%'}, 300, function(){
							el.hover(
								function(){el.animate({'top': '0%'}, 200);},
								function(){el.animate({'top': '-5%'}, 200);}
							);
							el.click(function(){
								$('html,body').animate({
									scrollTop: $('#ping-pong-container').offset().top
								}, 1000);
							});
						});
					});
			}
			// Slide the pull tab banner out when the page is ready to go
			$(document).ready(slideBanner);

			// Swap out banner types when the page scrolls past the pull tab
			var navEl = $('.navbar.site-nav');
			var pullTabEl = $('#pull-tab');
			
			/*  Include when advertising banner removed
			$(window).scroll(function(){
				if($(window).scrollTop() <= 0){
					if(navEl.hasClass('navbar-inverse')){
						navEl
						.addClass('navbar-transparent')
						.removeClass('navbar-inverse');
					}
				}else{
					if(navEl.hasClass('navbar-transparent')){
						navEl
						.addClass('navbar-inverse')
						.removeClass('navbar-transparent');
					}
				}
			});
			
			navEl.hover(
				function(){
					if($(window).scrollTop() === 0){
						navEl.addClass('navbar-inverse')
						.removeClass('navbar-transparent');
					}
				},
				function(){
					if($(window).scrollTop() === 0){
						navEl
						.addClass('navbar-transparent')
						.removeClass('navbar-inverse');
					}
				}
			);
			*/ 

			// Scroll to the top of the page when the logo is clicked.
			$('#header-logo').click(function(e){
				e.preventDefault();
				$('html,body').animate({scrollTop: 0}, 700);
			});
		})();
	</script>


	<script type="text/javascript">
		angular.module('embedded').constant('cacheVersion', '3bd5401efcbb6d32d029f55685f9901e');
		angular.module('embedded').constant('gitRevision', 'ab8a6e3');
		angular.module('embedded').constant('secondsSinceEpoch', 1403810522);
		angular.module('embedded').constant('canEatDogFood',
			false);
		angular.module('embedded').constant('sessionLapsed', null);
		angular.module('embedded').constant('basicUser', {"first_name": null, "last_name": null, "_registered": false, "email": null, "key": "1653929138", "_image_url": "//robohash.org/udacity-1653929138.png", "nickname": "", "_enrollments": [], "site_preferences": null});
		angular.module('embedded').constant('siteExperience', {
			'affiliateExperienceId': 'udacity',
			'externalProgressSystem': false,
			'managedAccount': false,
			'limitedAccess': false
		});
		angular.module('core').run(function(){
			// TODO (Jacques): Replace with directive on bootstrap elements
			setTimeout(function(){
				if ($("[rel=tooltip]").length) {$("[rel=tooltip]").tooltip();}
			}, 1000);
		});
	</script>
<!-- Honestly, what is wrong with you? Take a joke. -->
<div class="what-is-wrong-with-google-remarketing">
	<script type="text/javascript">
	/* <![CDATA[ */
	var google_conversion_id = 967079204;
	var google_conversion_label = "JSWsCKSChgUQpOqRzQM";
	var google_custom_params = window.google_tag_params;
	var google_remarketing_only = true;
	/* ]]> */
	</script>
	<script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
	</script>
	<noscript>
	<div style="display:inline;">
	<img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/967079204/?value=0&amp;label=JSWsCKSChgUQpOqRzQM&amp;guid=ON&amp;script=0"/>
	</div>
	</noscript>
</div>



<script type="text/javascript">
angular.module('utility').run(function (userzoomSurveyor, currentUser, dateTime) {
	var now = dateTime.getCurrent();
	var threeWeeksAgoDate = new Date(now.setDate(now.getDate() - 21));

	userzoomSurveyor.fetchEarliestPaidEnrollmentDate(currentUser.getUser()).then(
			function (earliestActivePaidEnrollmentStartDate) {
	
		// If they are not logged in or they are not a paying/gt user
		if (currentUser.userIsLoggedIn() && earliestActivePaidEnrollmentStartDate &&
				earliestActivePaidEnrollmentStartDate < threeWeeksAgoDate &&
				!userzoomSurveyor.everEnrolledInGtCourses(currentUser.getUser())) {
			userzoomSurveyor.runUserZoomSurvey(currentUser.getUser());
		}
	});
});
</script>


<script type="text/javascript">
adroll_adv_id = "WL3JVU2FPBE67LD3D432HF";
adroll_pix_id = "CUN2R5WLFZBO7N4DGALZFT";
(function () {
var oldonload = window.onload;
window.onload = function(){
   __adroll_loaded=true;
   var scr = document.createElement("script");
   var host = (("https:" == document.location.protocol) ? "https://s.adroll.com" : "http://a.adroll.com");
   scr.setAttribute('async', 'true');
   scr.type = "text/javascript";
   scr.src = host + "/j/roundtrip.js";
   ((document.getElementsByTagName('head') || [null])[0] ||
    document.getElementsByTagName('script')[0].parentNode).appendChild(scr);
   if(oldonload){oldonload()}};
}());
</script>




</body>
</html>
