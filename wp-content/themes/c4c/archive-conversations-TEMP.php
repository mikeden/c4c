<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">

						<main id="main" class="m-all t-all d-all cf" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

							<h1 class="page-title" itemprop="headline">Conversations</h1>

							<?php
							    // query for the about page
							    $your_query = new WP_Query( 'pagename=conversations' );
							    // "loop" through query (even though it's just one page) 
							    while ( $your_query->have_posts() ) : $your_query->the_post();
							        the_content();
							    endwhile;
							    // reset post data (important!)
							    wp_reset_postdata();
							?>
							
							<?php 
								$i = 1;
								query_posts(array(
								'posts_per_page' => 2,
								'post_type' => 'conversations',
								'orderby' => 'post_date',
								'paged' => $paged
								)
								); ?>

								<div class="convo-posts">

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
									</div>

									<?php if ($i % 2 == 0) { ?>
									  <div class="clearfix"></div>
									<?php } $i++ ; ?>

								<?php endwhile; ?>

								</div>

								<?php bones_page_navi(); ?>

								<?php wp_reset_query(); ?> 

							<div class="clearfix"></div>


						</main>


				</div>

			</div>

<?php get_footer(); ?>
