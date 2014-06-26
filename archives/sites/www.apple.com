<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en-US" lang="en-US">
<head>
	<meta charset="utf-8" />
	<meta name="Author" content="Apple Inc." />
	<meta name="viewport" content="width=1024" />
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7, IE=9" />
	<link id="globalheader-stylesheet" rel="stylesheet" href="http://images.apple.com/global/nav/styles/navigation.css" type="text/css" />
	

	<title>Apple</title>
	<meta name="omni_page" content="Apple - Index/Tab" />
	<meta name="Description" content="Apple designs and creates iPod and iTunes, Mac laptop and desktop computers, the OS X operating system, and the revolutionary iPhone and iPad." />
	<meta property="og:title" content="Apple" />
	<meta property="og:description" content="Apple designs and creates iPod and iTunes, Mac laptop and desktop computers, the OS X operating system, and the revolutionary iPhone and iPad." />
	<meta property="og:image" content="http://images.apple.com/home/images/og.jpg" />
	<meta property="og:image:width" content="250" />
	<meta property="og:image:height" content="250" />
	<meta property="og:url" content="http://www.apple.com/" />
	<link rel="home" href="http://www.apple.com/" />
	<link rel="alternate" type="application/rss+xml" title="RSS" href="http://images.apple.com/main/rss/hotnews/hotnews.rss" />
	<link rel="index" href="http://www.apple.com/sitemap/" />
	<link rel="stylesheet" href="http://images.apple.com/global/styles/base.css" type="text/css" />
	<link rel="stylesheet" href="http://images.apple.com/v/home/ax/styles/home.css" type="text/css" />
	<link rel="stylesheet" href="http://images.apple.com/v/home/ax/styles/billboard.css" type="text/css" />
	<link rel="stylesheet" href="http://images.apple.com/home/styles/billboard.css" type="text/css" />
	<script src="http://images.apple.com/global/scripts/lib/prototype.js" type="text/javascript" charset="utf-8"></script>
	<script src="http://images.apple.com/global/scripts/lib/scriptaculous.js" type="text/javascript" charset="utf-8"></script>
	<script src="http://images.apple.com/global/scripts/lib/sizzle.js" type="text/javascript" charset="utf-8"></script>
	<script src="http://images.apple.com/global/scripts/browserdetect.js" type="text/javascript" charset="utf-8"></script>
	<script src="http://images.apple.com/global/scripts/apple_core.js" type="text/javascript" charset="utf-8"></script>
	<script src="http://images.apple.com/global/scripts/search_decorator.js" type="text/javascript" charset="utf-8"></script>
	<script src="http://images.apple.com/global/ac_base/ac_base.js" type="text/javascript" charset="utf-8"></script>
	<script src="http://images.apple.com/global/scripts/feedstatistics.js" type="text/javascript" charset="utf-8"></script>
	<script src="http://images.apple.com/global/ac_retina/ac_retina.js" type="text/javascript" charset="utf-8"></script>

	<script type="text/javascript" src="http://images.apple.com/global/scripts/promomanager.js"></script>
	<script type="text/javascript">
		var promoManagerHero = 'hp-hero-billboard-20140611-us';
	</script>
</head>
<body class="home" id="home">
	
	<script type="text/javascript">
		var searchSection = 'global';
		var searchCountry = 'us';
		var aiRequestsEnabled = true;
		var aiDisplaySuggestions = true;
	</script>

<script src="http://images.apple.com/global/nav/scripts/globalnav.js" type="text/javascript" charset="utf-8"></script>
<nav id="globalheader" class="apple">
	<!--googleoff: all-->
	<ul id="globalnav" role="navigation">
		<li id="gn-apple"><a href="/"><span>Apple</span></a></li>
		<li id="gn-store"><a href="http://store.apple.com/"><span>Store</span></a></li>
		<li id="gn-mac"><a href="/mac/"><span>Mac</span></a></li>
		<li id="gn-ipod"><a href="/ipod/"><span>iPod</span></a></li>
		<li id="gn-iphone"><a href="/iphone/"><span>iPhone</span></a></li>
		<li id="gn-ipad"><a href="/ipad/"><span>iPad</span></a></li>
		<li id="gn-itunes"><a href="/itunes/"><span>iTunes</span></a></li>
		<li id="gn-support" class="gn-last"><a href="/support/"><span>Support</span></a></li>
	</ul>
	<!--googleon: all-->
	<div id="globalsearch">
		<form action="/search/" method="post" class="search" id="g-search"><div class="sp-label">
			<label for="sp-searchtext">Search</label>
			<input type="text" name="q" id="sp-searchtext" accesskey="s" />
		</div></form>
		<div id="sp-magnify"><div class="magnify-searchmode"></div><div class="magnify"></div></div>
		<div id="sp-results"></div>
	</div>
</nav>
<script type="text/javascript">
	AC.GlobalNav.Instance = new AC.GlobalNav();
</script>

	<div id="top">
<!-- SiteCatalyst code version: H.8. Copyright 1997-2006 Omniture, Inc. -->


	




	


<script type="text/javascript">
/* RSID: */

var s_account="appleglobal,applehome"

</script>


	<script type="text/javascript" src="http://images.apple.com/metrics/scripts/s_code_h.js"></script>



<script src="http://images.apple.com/metrics/scripts/touch_forcedlink.js" type="text/javascript"></script>
<script src="http://images.apple.com/metrics/scripts/homepage.js" type="text/javascript" charset="utf-8"></script>

<script type="text/javascript">
if(AC.Storage && typeof(promoManagerHero) !== 'undefined'){
	s.prop2 = (parseInt(AC.Storage.getItem('pm-' + promoManagerHero)) === 0) ? 'cherie' : 'esa';
}

s.pageName=AC.Tracking.pageName()+" (us)";
s.channel="www.us.homepage"


/* Browser Height and Device Type */
var platform = '';
if (s.u.match(/(kindle|silk-accelerated|android|webos|rim tablet os|windows phone)/i)) {
	platform = 'mobile other';
} else if (s.u.match(/windows/i)) {
	platform = 'windows';
}else if (s.u.match(/(iphone|ipod)/i)) {
	platform = 'iphone/ipod touch';
} else if (s.u.match(/(ipad)/i)) {
	platform = 'ipad';
}else if (s.u.match(/Mac OS X/i)){
		platform = 'Mac';
} else {
	platform = 'other';
}
s.eVar44=window.innerHeight;
s.eVar43=platform;


/************* DO NOT ALTER ANYTHING BELOW THIS LINE ! **************/
var s_code = s.t();</script>
<!-- End SiteCatalyst code version: H.8. -->
</div>

	<article id="billboard" data-hires="true" class="noscript">

		<section id="hero-0" class="hero your-verse orchestrating">
			<a class="full" href="/your-verse/orchestrating-sound/">What will your verse be?</a>
			<header class="header">
				<h1 class="title">
					<a href="/your-verse/orchestrating-sound/">
						<img class="large" src="http://images.apple.com/home/images/your_verse_title_large.png" width="980" height="108" alt="What will your verse be?" />
						<img class="medium" src="http://images.apple.com/home/images/your_verse_title_medium.png" width="980" height="88" alt="What will your verse be?" />
						<img class="small" src="http://images.apple.com/home/images/your_verse_title_small.png" width="980" height="76" alt="What will your verse be?" />
					</a>
				</h1>
				<h2 class="subheadline">
					<a href="/your-verse/orchestrating-sound/">
						<img class="large" src="http://images.apple.com/home/images/your_verse_subhead_large.png" width="980" height="160" alt="Everyone has something to share. See how people are using iPad in their unique ways to add to the world’s story." />
						<img class="medium" src="http://images.apple.com/home/images/your_verse_subhead_medium.png" width="980" height="83" alt="Everyone has something to share. See how people are using iPad in their unique ways to add to the world’s story." />
						<img class="small" src="http://images.apple.com/home/images/your_verse_subhead_small.png" width="980" height="80" alt="Everyone has something to share. See how people are using iPad in their unique ways to add to the world’s story." />
					</a>
				</h2>
				<a href="/your-verse/orchestrating-sound/" class="center cta-wrap">
					<span class="cta">
						<img class="medium" src="http://images.apple.com/home/images/cta_explore_story_27pt_center.png" width="980" height="64" alt="Explore the latest story" />
						<img class="large" src="http://images.apple.com/home/images/cta_explore_story_46pt_center.png" width="980" height="55" alt="Explore the latest story" />
					</span>
				</a>
			</header><!--/header-->
		</section><!--/your-verse-->

		<section id="hero-1" class="hero your-verse cherie">
			<a class="full" href="/your-verse/exploring-without-limits/">What will your verse be?</a>
			<header class="header">
				<h1 class="title">
					<a href="/your-verse/exploring-without-limits/">
						<img class="large" src="http://images.apple.com/home/images/your_verse_title_large.png" width="980" height="108" alt="What will your verse be?" />
						<img class="medium" src="http://images.apple.com/home/images/your_verse_title_medium.png" width="980" height="88" alt="What will your verse be?" />
						<img class="small" src="http://images.apple.com/home/images/your_verse_title_small.png" width="980" height="76" alt="What will your verse be?" />
					</a>
				</h1>
				<h2 class="subheadline">
					<a href="/your-verse/exploring-without-limits/">
						<img class="large" src="http://images.apple.com/home/images/your_verse_subhead_large.png" width="980" height="160" alt="Everyone has something to share. See how people are using iPad in their unique ways to add to the world’s story." />
						<img class="medium" src="http://images.apple.com/home/images/your_verse_subhead_medium.png" width="980" height="83" alt="Everyone has something to share. See how people are using iPad in their unique ways to add to the world’s story." />
						<img class="small" src="http://images.apple.com/home/images/your_verse_subhead_small.png" width="980" height="80" alt="Everyone has something to share. See how people are using iPad in their unique ways to add to the world’s story." />
					</a>
				</h2>
				<a href="/your-verse/exploring-without-limits/" class="center cta-wrap">
					<span class="cta">
						<img class="medium" src="http://images.apple.com/home/images/cta_explore_story_27pt_center_cherie.png" width="980" height="64" alt="Explore the latest story" />
						<img class="large" src="http://images.apple.com/home/images/cta_explore_story_46pt_center_cherie.png" width="980" height="55" alt="Explore the latest story" />
					</span>
				</a>
			</header><!--/header-->
		</section><!--/your-verse-->

	</article>
	<script type="text/javascript">
		var promos = new AC.PromoManager(promoManagerHero, 'hero');
		AC.Element.removeClassName(document.getElementById('billboard'), 'noscript');
	</script>

	<aside class="promos" data-hires="true" id="promos">
	<ul>
		<li>
			
			<a class="promo1" href="/apple-events/june-2014/">
	<img src="http://images.apple.com/home/images/promo_wwdc.jpg" width="364" height="200" alt="WWDC Fourteen. Watch the keynote." />
</a>

		</li>
		<li>
			
			<a class="promo2" href="/osx/preview/">
	<img src="http://images.apple.com/home/images/promo_yosemite.jpg" width="364" height="200" alt="OS X Yosemite. Every bit as powerful as it looks." />
</a>


		</li>
		<li>
			
			<a class="promo3" href="/ios/ios8/">
	<img src="http://images.apple.com/home/images/promo_ios8.jpg" width="364" height="200" alt="iOS 8. Coming this fall." />
</a>

		</li>
		<li>
			
			<a class="promo4" href="/iphone-5s/powerful/">
	<img class="strength" src="http://images.apple.com/home/images/promo_iphone5s_powerful.jpg" width="364" height="200" alt="You’re more powerful than you think. iPhone 5s" />
</a>

		</li>
	</ul>
</aside>
	<footer id="homefooter" data-hires="true">
	<div class="wrapper">
		<p class="left">Shop the <a href="http://store.apple.com/us">Apple Online Store</a> (1-800-MY-APPLE), visit an <a href="/retail/">Apple Retail Store</a>, or find a <a href="/buy/">reseller</a>.</p>
		<ul class="piped right"><li class="first">
			<a href="/sitemap/">Site Map</a></li><li>
			<a href="/hotnews/">Hot News</a></li><li>
			<a href="/rss/">RSS Feeds</a></li><li>
			<a href="/pr/">Media Info</a></li><li>
			<a href="/environment/">Environment</a></li><li>
			<a href="/jobs/">Job Opportunities</a></li><li>
			<a href="/contact/">Contact Us</a></li><li class="worldwide">
			<a href="/choose-your-country/"><img src="http://images.apple.com/global/elements/flags/16x16/usa.png" alt="Choose your country or region" height="16" width="16" /></a>
		</li></ul><!--/right-->

		<div class="clear left">
			<p class="copyright">Copyright © 2014 Apple Inc. All rights reserved.</p>
			
			<ul class="piped"><li class="first">
				<a href="/legal/">Terms of Use</a></li><li>
				<a href="/legal/privacy/en-us/">Privacy Policy</a>
			</li></ul>
		</div><!--/left-->
	</div><!--/wrapper-->
</footer><!--/homefooter-->

</body>
</html>
