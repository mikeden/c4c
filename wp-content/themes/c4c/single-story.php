<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">
					<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
					<div class="standard-page-header">
						<div class="standard-left-padd add-right">
							<h1><?php the_title(); ?></h1>
							<?php 
							$terms = get_the_terms( $post->ID, 'story_series');
							foreach ( $terms as $term ) {
							    $termID[] = $term->term_id;
							    $termName = $term->name;
							    $termSlug = $term->slug;
							    $location = get_field('location', $term);
							}
							?>
							<p class="helper"><?php echo $termName; ?> | <?php echo $location; ?></p>
						</div>
					</div>
				<?php endwhile; endif; ?>

					<main id="main" class="m-all t-all d-all cf" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

						<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

							<article id="post-<?php the_ID(); ?>" <?php post_class('cf'); ?> role="article" itemscope itemprop="blogPost" itemtype="http://schema.org/BlogPosting">


				                <section class="entry-content cf" itemprop="articleBody">

					                <div class="standard-left-padd">

					                	<?php $image = get_field('photo'); ?>

					                	<?php if( !empty($image) ): ?>
								  			<div class="main-photo" style="background-image:url(<?php echo $image['url']; ?>)"></div>
								  		<?php endif; ?>

								  		<div class="photo-meta">
								  			<p class="photo-credit">
								  				<?php the_field("photo_credit"); ?>
								  			</p>

								  			<?php $fname = get_the_author_meta('first_name');
											$lname = get_the_author_meta('last_name');
											$full_name = '';

											if( empty($fname)){
											    $full_name = $lname;
											} elseif( empty( $lname )){
											    $full_name = $fname;
											} else {
											    //both first name and last name are present
											    $full_name = "{$fname} {$lname}";
											}
											?>
								  			<p class="story-location">
								  				By <?php echo $full_name; ?>, <?php echo get_the_date(); ?>
								  			</p>

								  			<div class="clearfix"></div>
								  		</div>

								  		<div class="post-meta">

								  			<div class="single-left">
												<p class="helper comments">
												  <?php comments_number( 'No comments', '1 comment', '% comments' ); ?>
												</p>
											</div>

											<p id="share" class="padd-less">

											</p>

											<div class="clearfix"></div>

										</div>

									</div>

				                	
				                 	<div class="standard-left-padd add-right">

						                  <?php
						                    // the content (pretty self explanatory huh)
						                    the_content();

						                    /*
						                     * Link Pages is used in case you have posts that are set to break into
						                     * multiple pages. You can remove this if you don't plan on doing that.
						                     *
						                     * Also, breaking content up into multiple pages is a horrible experience,
						                     * so don't do it. While there are SOME edge cases where this is useful, it's
						                     * mostly used for people to get more ad views. It's up to you but if you want
						                     * to do it, you're wrong and I hate you. (Ok, I still love you but just not as much)
						                     *
						                     * http://gizmodo.com/5841121/google-wants-to-help-you-avoid-stupid-annoying-multiple-page-articles
						                     *
						                    */
						                    wp_link_pages( array(
						                      'before'      => '<div class="page-links"><span class="page-links-title">' . __( 'Pages:', 'bonestheme' ) . '</span>',
						                      'after'       => '</div>',
						                      'link_before' => '<span>',
						                      'link_after'  => '</span>',
						                    ) );
						                  ?>
						            </div>
						        </section> <?php // end article section ?>
						     </article> <?php // end article ?>

						     <div class="page-subhead l130">
								<div class="top-line">
									<div class="bg"></div>
									<div class="highlight"></div>
								</div>
								<h4>Related Series Stories</h4>
							</div>

							<div class="standard-left-padd">
	    						<div class="stories-list">
		    						<div class="m-all t-1of2 d-1of2 left-column">
										<?php 
											
											$args=array(
											  'post_type' => 'story',
											  'post_status' => 'publish',
											  'posts_per_page'=>2,
											  'story_series' => $termSlug,
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


										  		<div class="story-item related s<?php echo $i ?> <?php echo $alt ?>">
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

									</div>
									<div class="clearfix"></div>
								</div>



							</div>
						            
						     <?php $num_comments = get_comments_number(); 
							if ($num_comments > 0) { ?>

							<div class="page-subhead l130">
								<div class="top-line">
									<div class="bg"></div>
									<div class="highlight"></div>
								</div>
								<h4><?php comments_number( 'No Comments', '1 Comment', '% Comments' ); ?></h4>
							</div>

							<?php } ?>

							
							<div class="standard-left-padd">
								<?php comments_template(); ?>
							</div>
							

						<?php endwhile; ?>

						<?php else : ?>

							<article id="post-not-found" class="hentry cf">
									<header class="article-header">
										<h1><?php _e( 'Oops, Post Not Found!', 'bonestheme' ); ?></h1>
									</header>
									<section class="entry-content">
										<p><?php _e( 'Uh Oh. Something is missing. Try double checking things.', 'bonestheme' ); ?></p>
									</section>
									<footer class="article-footer">
											<p><?php _e( 'This is the error message in the single.php template.', 'bonestheme' ); ?></p>
									</footer>
							</article>

						<?php endif; ?>

					</main>


				</div>

			</div>

<?php get_footer(); ?>
