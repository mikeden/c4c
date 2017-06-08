<?php get_header(); ?>
<?php $sc = get_field('soundcloud');?>
<?php $intro = get_field('newsletter_intro');?>

			<div id="content">

				

				<div class="home-wrapper">
					<div class="videoWrapper home">
						<video autoplay="" class="background-video" data-prevent-cleanup="keep" loop="" poster="<?php echo get_template_directory_uri(); ?>/library/video/poster.jpg" preload="">
							<source src="https://player.vimeo.com/external/219129244.hd.mp4?s=194d1f70f8bd84242f8d2202c21937cd80665820&profile_id=119" type="video/mp4">
						</video>
						<div class="mobile-poster">

						</div>
					</div>
				</div>

				

				<div id="inner-content" class="wrap cf">

					<div class="home-intro">
						<h1><a href="conversations/" class="alt1">Conversations</a></h1>
						<h1><a href="series/" class="alt1">Series</a></h1>
						<h1><a href="journal/" class="alt1">Journal</a></h1>
						<div class="hr"></div>
						<?php the_field('intro'); ?>
						
					</div>

					<div class="radio-callout">
						<div class="block">
							<a href="#" class="aqua-btn sm" id="play-go">Play and Go</a>
							<h4>C4C Radio</h4>
							<p>C4C Conversations in one convenient playlist.</p>
							<div class="clearfix"></div>
						</div>
					</div>

				</div>
				<div class="wrap cf">

					<div class="page-subhead">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>Recent Conversations</h4>
					</div>

					<div class="convo-posts">

							<?php 
							$i = 1;
							query_posts(array(
							'posts_per_page' => 2,
							'post_type' => 'conversations',
							'orderby' => 'post_date',
							'meta_key' => 'featured_conversation', // the name of the custom field
							'meta_compare' => '=', // the comparison (e.g. equals, does not equal, etc...)
							'meta_value' => 1, // the value to which the custom field is compared. In my case, 'featured_product' was a true/false checkbox. If you had a custom field called 'color' and wanted to show only those blue items, then the meta_value would be 'blue'
							'paged' => $paged
							)
							); ?>

							<?php if ( have_posts() ) while ( have_posts() ) : the_post(); ?>

								<?php if ($i % 2 == 0) { 
									$elem = 'even'; 
								} else { 
									$elem = 'odd'; 
								};  ?>

								<div class="convo m-all t-1of2 d-1of2 c<?php echo $i ?> <?php echo $elem ?>">
									<p class="caption"><?php the_field('caption'); ?></p>
									<?php $image = get_field('photo');
									if( !empty($image) ): ?>
										<div class="photo" style="background-image:url(<?php echo $image['url']; ?>)"></div>
										<div class="clearfix"></div>
									<?php endif; ?>
									<p class="quote"><?php the_field('quote'); ?></p>
									<a href="<?php the_permalink() ?>" class="white-btn">Listen</a>
									<div class="clearfix"></div>
									<?php $i++ ;?>
								</div>

							<?php endwhile; ?>

							<?php wp_reset_query(); ?> 

					</div>

							<div class="clearfix"></div>

							<div class="standard-left-padd section-callout"><a href="conversations/" class="section-links">Explore all conversations</a></div>
					

					<div class="page-subhead l100">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>Featured Series</h4>
					</div>
				</div>

				<div class="wrap">
					
					<?php 
						$categories = get_categories(array(
							'taxonomy' => 'story_series',
							'post_type' => 'story',
							'hide_empty'=>0
							
							));
						foreach ($categories as $category) : ?>
							<?php 
								$featured = get_field('featured', $category);
								if ($featured == 1) {
							?>

							<?php $copy = get_field('copy', $category); ?>
							<?php $location = get_field('location', $category); ?>
							<?php $caption = get_field('image_caption', $category); ?>
							<?php $photo = get_field('image', $category); ?>

							<div class="featured-series">
								<div class="header-wrap">
									<div class="wrap wrap-full">
										<div class="copy">
											<h1><?php echo $category->name; ?></h1>
											<p class="location"><?php echo $location ?></p>
											<?php echo $copy ?>
											<p class="link">
												<a href="./<?php echo $category->slug; ?>" class="section-links sm">Explore series</a>
											</p>
										</div>
									</div>
									<div class="bg-photo" style="background-image: url(<?php echo $photo ?>)"></div>
									<p class="photo-caption"><?php echo $caption ?></p>
								</div>
							</div>

							

							<? break; } ?>

	    			<?php endforeach; ?>
				</div>

				<div class="wrap cf">
					<div class="standard-left-padd section-callout"><a href="series/" class="section-links">Explore all series</a></div>
				</div>

				<div class="wrap cf">

					<div class="page-subhead l130">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>From the Journal</h4>
					</div>

				</div>



				
				<div class="wrap cf">
					<div class="standard-left-padd add-right">
						<div class="stories-list">
			    			<div class="m-all t-1of2 d-1of2 left-column">

							<?php
								$query_args = array(
								   'post_type' => 'post',
								   'posts_per_page' => 3
								);
							 	$i = 1;
							  	$the_query = new WP_Query( $query_args );
							  	$count = $the_query->post_count;
								$half = $count/2;
								$half = round($half, 0, PHP_ROUND_HALF_UP);
							?>

							<?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); // run the loop ?>
								<?php $image = get_field('photo'); ?>
								<?php {
						  			$alt = "v1";
						  			if ($i % 2 == 0 ) {
						  				$alt = "v2";
						  			}
						  			if ($i % 3 == 0 ) {
						  				$alt = "v3";
						  			}
						  		} ?>
								  <div class="story-item s<?php echo $i ?> <?php echo $alt ?>">
						  			<h2><a href="<?php the_permalink() ?>" rel="bookmark" title="<?php the_title(); ?>"><?php the_title(); ?></a></h2>
						  			<?php if( !empty($image) ): ?>
						  			<div class="photo" style="background-image:url(<?php echo $image['url']; ?>)"></div>
						  			<?php endif; ?>
						  			<div class="clearfix"></div>
						  			<?php the_excerpt(); ?>
						  			<p class="link">
						  				<a href="<?php the_permalink() ?>" class="section-links sm">Read More</a>
						  			</p>
						  			<div class="hr"></div>
						  		</div>

						  		<?php if ($i == $half) { ?>
						  			</div>
						  			<div class="m-all t-1of2 d-1of2 right-column">
						  		<?php } ?>

						  		<?php $i++; ?>
							<?php endwhile; endif; ?>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>

				</div>

				<div class="wrap cf">
					<div class="standard-left-padd section-callout"><a href="journal/" class="section-links">More from the Journal</a></div>
				</div>

				<div class="wrap cf">

					<div class="page-subhead l130">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>Subscribe to Newsletter</h4>
					</div>

				</div>

				<div class="wrap cf">
					<div class="standard-left-padd" id="newsletter">

						<div class="intro">
							<div class="hr"></div>
							<?php echo $intro; ?>
						</div>

						<!-- Begin MailChimp Signup Form -->
						<div id="mc_embed_signup">
							<form action="//challengeforchange.us16.list-manage.com/subscribe/post?u=2b5a8a54485737eb7a294c5a0&amp;id=41555eb024" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
							    <div id="mc_embed_signup_scroll">
								

							<div class="mc-field-group name-group">
								<label for="mce-NAME">Name </label>
								<input type="text" value="" name="NAME" class="" id="mce-NAME" placeholder="Enter Name">
							</div>
							<div class="mc-field-group email-group">
								<label for="mce-EMAIL">Email Address  <span class="asterisk">*</span></label>
								<input type="email" value="" name="EMAIL" class="required email" id="mce-EMAIL" placeholder="Enter Email"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="aqua-btn sm inline">
							</div>
							<div class="clearfix"></div>
							<div class="indicates-required"><span class="asterisk">*</span> indicates required</div>

								 <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
							    <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_2b5a8a54485737eb7a294c5a0_41555eb024" tabindex="-1" value=""></div>
							   
							    </div>
							    <div id="mce-responses" class="clear">
									<div class="response" id="mce-error-response" style="display:none"></div>
									<div class="response" id="mce-success-response" style="display:none"></div>
								</div>   
							</form>
						</div>

						<!--End mc_embed_signup-->

					</div>
					
				</div>

				

				<div class="wrap cf">

					<div class="page-subhead l130">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>Our Supporters</h4>
					</div>

					<div class="standard-left-padd add-right">
						<div class="supporters primary">
							<a href="http://inspiritfoundation.org/" target="_blank" title="Inspirit Foundation"><img src="<?php echo get_template_directory_uri(); ?>/library/images/logo-inspirit.png" /></a>
							<a><img src="<?php echo get_template_directory_uri(); ?>/library/images/MacMillan_logo.png" /></a>
							<a href="https://www.nfb.ca/" target="_blank" class="last" title="NFB"><img src="<?php echo get_template_directory_uri(); ?>/library/images/NFB_Logo.png" /></a>
						</div>

						<div class="supporters">
							<p>In partnership with:</p> 
							<a href="http://www.viarail.ca/en" target="_blank" title="Via Rail"><img class="no-margin" src="<?php echo get_template_directory_uri(); ?>/library/images/VIA_Rail_Logo.png" /></a>
						</div>

						<div class="supporters">
							<a href="http://discoursemedia.org/" target="_blank" title="Discourse Media"><img src="<?php echo get_template_directory_uri(); ?>/library/images/Discourse_Logo.png" /></a>
							<a href="http://www.ryerson.ca/" target="_blank" title="Ryerson"><img src="<?php echo get_template_directory_uri(); ?>/library/images/Ryerson_Logo.png" /></a>
							<a href="http://carleton.ca/" target="_blank" title="Carleton"><img src="<?php echo get_template_directory_uri(); ?>/library/images/Carleton_Logo.png" /></a>
							<a href="https://www.mitacs.ca/en" target="_blank" class="last" title="Mitacs"><img src="<?php echo get_template_directory_uri(); ?>/library/images/Mitacs_Logo.png" /></a>
						</div>
					</div>

					<div class="page-subhead l80">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>C4C Radio</h4>
					</div>

					<div class="standard-left-padd add-right" id="c4c-player">
						<h1>Play and Go </h1>
						<p class="helper">C4C Radio gives you every C4C Conversation in one convenient playlist.</p>

						<?php if ($sc) { ?>
							<iframe width="100%" height="300" class="sc-player" scrolling="yes" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/playlists/<?php echo $sc; ?>&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=false&amp;color=589CA6"></iframe>
						<?php } ?>

						
					</div>

					<div class="standard-left-padd section-callout"><a href="conversations/" class="section-links">Explore all conversations</a></div>


				</div>

			</div>

<?php get_footer(); ?>
