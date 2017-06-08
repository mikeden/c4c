<!doctype html>

<!--[if lt IE 7]><html <?php language_attributes(); ?> class="no-js lt-ie9 lt-ie8 lt-ie7"><![endif]-->
<!--[if (IE 7)&!(IEMobile)]><html <?php language_attributes(); ?> class="no-js lt-ie9 lt-ie8"><![endif]-->
<!--[if (IE 8)&!(IEMobile)]><html <?php language_attributes(); ?> class="no-js lt-ie9"><![endif]-->
<!--[if gt IE 8]><!--> <html <?php language_attributes(); ?> class="no-js"><!--<![endif]-->

	<head>
		<meta charset="utf-8">

		<?php // force Internet Explorer to use the latest rendering engine available ?>
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<title><?php wp_title(''); ?></title>

		<?php // mobile meta (hooray!) ?>
		<meta name="HandheldFriendly" content="True">
		<meta name="MobileOptimized" content="320">
		<meta name="viewport" content="width=device-width, initial-scale=1"/>

		<?php // icons & favicons (for more: http://www.jonathantneal.com/blog/understand-the-favicon/) ?>
		<link rel="apple-touch-icon" href="<?php echo get_template_directory_uri(); ?>/library/images/apple-touch-icon.png">
		<link rel="icon" href="<?php echo get_template_directory_uri(); ?>/favicon.png">
		<!--[if IE]>
			<link rel="shortcut icon" href="<?php echo get_template_directory_uri(); ?>/favicon.ico">
		<![endif]-->
		<?php // or, set /favicon.ico for IE10 win ?>
		<meta name="msapplication-TileColor" content="#f01d4f">
		<meta name="msapplication-TileImage" content="<?php echo get_template_directory_uri(); ?>/library/images/win8-tile-icon.png">
            <meta name="theme-color" content="#121212">

		<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>">



		<?php // wordpress head functions ?>
		<?php wp_head(); ?>
		<?php // end of wordpress head ?>

		<?php $image = get_field('photo'); ?>
		<?php if( !empty($image) ): ?>
			<meta property="og:image" content="<?php echo $image['url']; ?>" />
			<meta name="twitter:image" content="<?php echo $image['url']; ?>" />
		<?php endif; ?>

		<?php // drop Google Analytics Here ?>
			<script>
			  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
			  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
			  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
			  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
			 
			  ga('create', 'UA-100570622-1', 'auto');
			  ga('send', 'pageview');
			 
			</script>
		<?php // end analytics ?>

		<script src="https://use.typekit.net/ssu2voa.js"></script>
		<script>try{Typekit.load({ async: true });}catch(e){}</script>
		<style type="text/css">
		  .wf-loading body
		   {
		    visibility: hidden;
  			}
		</style>

		

	</head>

	<body <?php body_class(); ?> itemscope itemtype="http://schema.org/WebPage">

		<div id="container">
			<div class="logo mobile-logo" itemscope itemtype="http://schema.org/Organization"><div class="highlight"></div><a href="<?php echo home_url(); ?>" rel="nofollow"></a></div>
			<div id="mobile-menu">

				<div class="hr"></div>
				
					<?php wp_nav_menu(array(
				         'container' => false,                           // remove nav container
				         'container_class' => 'menu cf',                 // class of container (should you choose to use it)
				         'menu' => __( 'The Main Menu', 'bonestheme' ),  // nav name
				         'menu_class' => 'nav top-nav mobile-nav cf',               // adding custom nav class
				         'theme_location' => 'main-nav',                 // where it's located in the theme
				         'before' => '',                                 // before the menu
			               'after' => '',                                  // after the menu
			               'link_before' => '',                            // before each link
			               'link_after' => '',                             // after each link
			               'depth' => 0,                                   // limit the depth of the nav
				         'fallback_cb' => ''                             // fallback function (if there is one)
				)); ?>
				<div class="hr"></div>
				<ul class="social-menu mobile-social">
					<li class="fb"><a href="https://www.facebook.com/C4CCanada/" class="fb" target="_blank" title="Facebook"></a></li>
					<li class="tw"><a href="https://twitter.com/C4CCanada " class="tw" target="_blank" title="Twitter"></a></li>
					<li class="ig"><a href="https://www.instagram.com/challengeforchangecanada/" class="ig" target="_blank" title="Instagram"></a></li>
					<li class="sc"><a href="https://soundcloud.com/user-283436858-290767787" class="sc" target="_blank" title="Soundcloud"></a></li>
				</ul>
			</div>

			<header class="header" role="banner" itemscope itemtype="http://schema.org/WPHeader">

				<div id="inner-header" class="wrap cf">

					<?php // to use a image just replace the bloginfo('name') with your img src and remove the surrounding <p> ?>
					

					<?php // if you'd like to use the site description you can un-comment it below ?>
					<?php // bloginfo('description'); ?>


					<nav role="navigation" class="top-nav" itemscope itemtype="http://schema.org/SiteNavigationElement">
						<div class="logo" itemscope itemtype="http://schema.org/Organization"><div class="highlight"></div><a href="<?php echo home_url(); ?>" rel="nofollow"></a></div>
						<?php wp_nav_menu(array(
    					         'container' => false,                           // remove nav container
    					         'container_class' => 'menu cf',                 // class of container (should you choose to use it)
    					         'menu' => __( 'The Main Menu', 'bonestheme' ),  // nav name
    					         'menu_class' => 'nav top-nav cf',               // adding custom nav class
    					         'theme_location' => 'main-nav',                 // where it's located in the theme
    					         'before' => '',                                 // before the menu
        			               'after' => '',                                  // after the menu
        			               'link_before' => '<div class="highlight"></div>',                            // before each link
        			               'link_after' => '',                             // after each link
        			               'depth' => 0,                                   // limit the depth of the nav
    					         'fallback_cb' => ''                             // fallback function (if there is one)
						)); ?>



						<ul class="social-menu top-social">
							<li class="fb"><a href="https://www.facebook.com/C4CCanada/" class="fb" target="_blank" title="Facebook"></a></li>
							<li class="tw"><a href="https://twitter.com/C4CCanada " class="tw" target="_blank" title="Twitter"></a></li>
							<li class="ig"><a href="https://www.instagram.com/challengeforchangecanada/" class="ig" target="_blank" title="Instagram"></a></li>
							<li class="sc"><a href="https://soundcloud.com/user-283436858-290767787" class="sc" target="_blank" title="Soundcloud"></a></li>
						</ul>

					</nav>

					

				</div>

			</header>
