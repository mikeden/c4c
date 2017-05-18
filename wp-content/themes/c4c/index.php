<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">

						<div class="standard-page-header short">
							<div class="standard-left-padd add-right">
								<?php $our_title = get_the_title( get_option('page_for_posts', true) ); ?>
								<h1><?php echo $our_title ?></h1>

								<div class="intro">
									<div class="hr"></div>
									<?php the_field('intro', 6) ?>
								</div>
							</div>
						</div>

						<main id="main" class="m-all t-2of3 d-5of7 cf" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

							

							<div class="stories-list">
		    						<div class="m-all t-1of2 d-1of2 left-column">

		    						<?php 
									global $wp_query; 
         							$count = $wp_query->post_count;

         							$i = 1;

         							$half = $count/2;
									$half = round($half, 0, PHP_ROUND_HALF_UP);
         							?>

									<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

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



									<?php endwhile; ?>
								</div>
								<div class="clearfix"></div>
							</div>
							<div class="clearfix"></div>

									<?php bones_page_navi(); ?>

							<?php else : ?>

									<article id="post-not-found" class="hentry cf">
											<header class="article-header">
												<h1><?php _e( 'Oops, Post Not Found!', 'bonestheme' ); ?></h1>
										</header>
											<section class="entry-content">
												<p><?php _e( 'Uh Oh. Something is missing. Try double checking things.', 'bonestheme' ); ?></p>
										</section>
										<footer class="article-footer">
												<p><?php _e( 'This is the error message in the index.php template.', 'bonestheme' ); ?></p>
										</footer>
									</article>

							<?php endif; ?>


						</main>

					<?php get_sidebar("journal"); ?>

				</div>

			</div>


<?php get_footer(); ?>
