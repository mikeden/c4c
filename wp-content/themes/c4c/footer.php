			<footer class="footer" role="contentinfo" itemscope itemtype="http://schema.org/WPFooter">

				<div id="inner-footer" class="wrap cf">

					<div class="m-all t-1of4 d-1of4">

						<div id="logo-footer" class="logo footer-logo" itemscope itemtype="http://schema.org/Organization"><a href="<?php echo home_url(); ?>" rel="nofollow"></a></div>

					</div>

					<div class="m-all t-1of4 d-1of4">
						<nav role="navigation">
							<?php wp_nav_menu(array(
	    					'container' => 'div',                           // enter '' to remove nav container (just make sure .footer-links in _base.scss isn't wrapping)
	    					'container_class' => 'footer-links cf',         // class of container (should you choose to use it)
	    					'menu' => __( 'Footer Links', 'bonestheme' ),   // nav name
	    					'menu_class' => 'nav footer-nav cf',            // adding custom nav class
	    					'theme_location' => 'footer-links',             // where it's located in the theme
	    					'before' => '',                                 // before the menu
	    					'after' => '',                                  // after the menu
	    					'link_before' => '',                            // before each link
	    					'link_after' => '',                             // after each link
	    					'depth' => 0,                                   // limit the depth of the nav
	    					'fallback_cb' => 'bones_footer_links_fallback'  // fallback function
							)); ?>
						</nav>
					</div>

					<div class="m-all t-1of2 d-1of2">
						<ul class="social-menu btm-social">
							<li class="fb"><a href="https://www.facebook.com/C4CCanada/" class="fb" target="_blank" title="Facebook"></a></li>
							<li class="tw"><a href="https://twitter.com/C4CCanada" class="tw" target="_blank" title="Twitter"></a></li>
							<li class="ig"><a href="https://www.instagram.com/challengeforchangecanada/" class="ig" target="_blank" title="Instagram"></a></li>
							<li class="sc"><a href="https://soundcloud.com/user-283436858-290767787" class="sc" target="_blank" title="Soundcloud"></a></li>
						</ul>
					</div>

					<div class="clearfix"></div>

					<div class="m-all t-1of4 d-1of4">
						&nbsp;
					</div>

					<div class="m-all t-3of4 d-3of4">
						<p class="source-org copyright">&copy; <?php echo date('Y'); ?> <?php bloginfo( 'name' ); ?>.</p>
					</div>

				</div>

			</footer>

		</div>

		<?php // all js scripts are loaded in library/bones.php ?>
		<?php wp_footer(); ?>

	</body>

</html> <!-- end of site. what a ride! -->
