<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">

						<main id="main" class="m-all t-3of3 d-7of7 cf series-index" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

							<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

								
								<div class="standard-page-header">
									<div class="standard-left-padd add-right">
										<h1><?php the_title(); ?></h1>

										<div class="intro">
											<div class="hr"></div>
											<?php the_content(); ?>
										</div>
									</div>
								</div>


								<?php 
									$i = 1;
									$categories = get_categories('taxonomy=story_series&post_type=story&hide_empty=0');
									foreach ($categories as $category) : ?>

										<?php $copy = get_field('copy', $category); ?>
										<?php $location = get_field('location', $category); ?>
										<?php $caption = get_field('image_caption', $category); ?>
										<?php $photo = get_field('image', $category); ?>

										<?php if ($i % 2 == 0) { 
											$elem = 'even'; 
										} else { 
											$elem = 'odd'; 
										};  ?>

										<div class="featured-series <?php echo $elem ?>">
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

										<?php $i++ ; ?>

				    			<?php endforeach; ?>


								

							<?php endwhile; endif; ?>

						</main>


				</div>

			</div>

<?php get_footer(); ?>
