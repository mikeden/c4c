<?php
/*
 Template Name: Series Landing Pages
 *
 * This is your custom page template. You can create as many of these as you need.
 * Simply name is "page-whatever.php" and in add the "Template Name" title at the
 * top, the same way it is here.
 *
 * When you create your page, you can just select the template and viola, you have
 * a custom page template to call your very own. Your mother would be so proud.
 *
 * For more info: http://codex.wordpress.org/Page_Templates
*/
?>

<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">

						<main id="main" class="m-all t-all d-all cf" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

							<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

							

							<?php 

							global $post;
							$pageslug=$post->post_name;

							$categories = get_categories(array(
							'taxonomy' => 'story_series',
							'post_type' => 'story',
							'hide_empty'=>0
							
							));
							foreach ($categories as $category) : ?>
						
							<?php $catslug = $category->slug; ?>

							<?php if ($pageslug==$catslug) { ?>
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
												<a href="<?php echo get_site_url(); ?>/series/<?php echo $category->slug; ?>" class="section-links sm">Explore series</a>
											</p>
										</div>
									</div>
									<div class="bg-photo" style="background-image: url(<?php echo $photo ?>)"></div>
									<p class="photo-caption"><?php echo $caption ?></p>
								</div>
							</div>

							
							<? break; } ?>
	    					<?php endforeach; ?>

								
	    					<div class="standard-left-padd add-right">
	    						<div class="stories-list">
		    						<div class="m-all t-1of2 d-1of2 left-column">
										<?php 
											
											$args=array(
											  'post_type' => 'story',
											  'post_status' => 'publish',
											  'story_series' => $pageslug,
											  'caller_get_posts'=> 1);

											$my_query = new WP_Query($args);
											$i = 1;
											$count = $my_query->post_count;
											$half = $count/2;
											$half = round($half, 0, PHP_ROUND_HALF_UP);
											

											if( $my_query->have_posts() ) {
										  	while ($my_query->have_posts()) : $my_query->the_post(); ?>

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
										  	<?php endwhile;

										  	} wp_reset_query(); ?>

										

										<?php endwhile; ?>

									</div>
									<div class="clearfix"></div>
								</div>

								<div class="clearfix"></div>

								<?php else : ?>

								<?php endif; ?>



							</div>

						</main>


				</div>

				<div class="wrap cf">
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


			</div>


<?php get_footer(); ?>
