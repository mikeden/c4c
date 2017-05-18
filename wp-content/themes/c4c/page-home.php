<?php get_header(); ?>

			<div id="content">

				

				<div class="home-wrapper">
					<div class="videoWrapper">
						<iframe src="https://player.vimeo.com/video/13008175?autoplay=0&loop=1&byline=0&title=0" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
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
							<a href="#" class="aqua-btn sm">Play and Go</a>
							<h4>C4C Radio</h4>
							<p>Every C4C Conversation in one convenient playlist</p>
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
					<div class="standard-left-padd section-callout"><a href="journal/" class="section-links">Explore all series</a></div>
				</div>

				<div class="wrap cf">

					<div class="page-subhead l130">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>From the Journal</h4>
					</div>

					<div class="page-subhead l130">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>Our Supporters</h4>
					</div>

					<div class="page-subhead l80">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>C4C Radio</h4>
					</div>

					<div class="standard-left-padd add-right">
						<h1>Play and Go</h1>
						<p class="helper">C4C Radio gives you every C4C Conversation in one convinient playlist.</p>
						<iframe width="100%" height="300" class="sc-player" scrolling="yes" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/playlists/224785489&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=false"></iframe>

					</div>

					<div class="standard-left-padd section-callout"><a href="conversations/" class="section-links">Explore all conversations</a></div>

					

				</div>

			</div>

<?php get_footer(); ?>
