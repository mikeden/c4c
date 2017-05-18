<?php
/*
 * CUSTOM POST TYPE ARCHIVE TEMPLATE
 *
 * This is the custom post type archive template. If you edit the custom post type name,
 * you've got to change the name of this template to reflect that name change.
 *
 * For Example, if your custom post type is called "register_post_type( 'bookmarks')",
 * then your template name should be archive-bookmarks.php
 *
 * For more info: http://codex.wordpress.org/Post_Type_Templates
*/
?>

<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">

					<main id="main" class="m-all t-all d-all cf" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

						<div class="standard-page-header">
							<div class="standard-left-padd add-right">
								<h1><?php post_type_archive_title(); ?></h1>

								<div class="intro">
									<div class="hr"></div>
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
								</div>
							</div>
						</div>

							<?php $i = 1 ?>

							<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

							
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

							<div class="clearfix"></div>

								<?php bones_page_navi(); ?>

							<?php else : ?>

							<?php endif; ?>

							

						</main>


				</div>

			</div>

<?php get_footer(); ?>
