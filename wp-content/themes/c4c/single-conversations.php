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
								<iframe width="100%" height="166" scrolling="no" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/tracks/<?php echo $sc;?>&amp;color=ff5500&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false"></iframe>

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

							

							<?php comments_template(); ?>

							

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

			</div>

<?php get_footer(); ?>
