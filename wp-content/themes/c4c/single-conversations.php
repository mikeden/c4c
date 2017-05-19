<?php
/*
 * CUSTOM POST TYPE TEMPLATE
 *
 * This is the custom post type post template. If you edit the post type name, you've got
 * to change the name of this template to reflect that name change.
 *
 * For Example, if your custom post type is "register_post_type( 'bookmarks')",
 * then your single template should be single-bookmarks.php
 *
 * Be aware that you should rename 'custom_cat' and 'custom_tag' to the appropiate custom
 * category and taxonomy slugs, or this template will not finish to load properly.
 *
 * For more info: http://codex.wordpress.org/Post_Type_Templates
*/
?>

<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">

					

						<main id="main" class="m-all t-all d-all cf" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

							<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

							<div class="standard-left-padd">

								<div class="c-header">
									<h1 class="quote"><?php the_field('quote'); ?></h1>
									<p class="caption"><?php the_field('caption'); ?></p>
									<?php $image = get_field('photo');
									if( !empty($image) ): ?>
										<div class="photo" style="background-image:url(<?php echo $image['url']; ?>)"></div>
										<div class="clearfix"></div>
									<?php endif; ?>
									
									<div class="clearfix"></div>
								</div>
							</div>

							<div class="standard-left-padd add-right">
								<?php $sc = get_field('soundcloud_id'); ?>

								<?php if ($sc) { ?>
									<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/<?php echo $sc;?>&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>
								<?php } ?>

								<p class="tags">
									<?php
									$terms = get_the_terms( $post->ID, 'conversation_tag' );
									if ($terms && ! is_wp_error($terms)): ?>
									    <?php foreach($terms as $term): ?>
									        <a href="<?php echo get_term_link( $term->slug, 'conversation_tag'); ?>" rel="tag" class="<?php echo $term->slug; ?> aqua-btn x-sm"><?php echo $term->name; ?></a>
									    <?php endforeach; ?>
									<?php endif; ?>
								</p>

							</div>

							<div class="standard-left-padd add-right">
								
								<div class="w75 copy">
									<?php the_content(); ?>
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
											<p><?php _e( 'This is the error message in the single-custom_type.php template.', 'bonestheme' ); ?></p>
										</footer>
									</article>

							<?php endif; ?>

						</main>

					
				</div>

				<div class="wrap cf padd-top">

					<div class="page-subhead">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>Featured Conversations</h4>
					</div>

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

							<div class="clearfix"></div>

							<div class="standard-left-padd section-callout"><a href="conversations/" class="section-links">Explore all conversations</a></div>
					
				</div>

			</div>

<?php get_footer(); ?>
