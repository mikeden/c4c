<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">

						<div class="standard-page-header short">
							<div class="standard-left-padd add-right">
								<h1>About C4C</h1>

								<div class="intro">
									<div class="hr"></div>
									<?php the_field('intro') ?>
								</div>
							</div>
						</div>

						<main id="main" class="m-all t-all d-all cf" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

							<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

							<div class="standard-left-padd">
								<?php $image = get_field('header_photo'); ?>

			                	<?php if( !empty($image) ): ?>
						  			<div class="main-photo" style="background-image:url(<?php echo $image ?>)"></div>
						  		<?php endif; ?>
						  	</div>

							<div class="standard-left-padd add-right">

								<article id="post-<?php the_ID(); ?>" <?php post_class( 'cf' ); ?> role="article" itemscope itemtype="http://schema.org/BlogPosting">

									<section class="entry-content cf" itemprop="articleBody">
										<?php
											the_content();
										?>
									</section>


								</article>

							</div>

							
							
							

							<div class="standard-left-padd team">

								<h2>Our Team</h2>

								<?php if( have_rows('headshots') ): ?>
									<div class="row r1">
									<?php $i=1; $total=count( get_field('headshots') ); while( have_rows('headshots') ): the_row(); ?>

										<div class="team-member tm<?php echo $i ?>">
											<div class="photo" style="background-image: url(<?php the_sub_field("photo");?>)"></div>
											<p class="helper"><?php the_sub_field('title'); ?></p>
										</div>

										<?php if ($i == 2) { ?>
											</div><div class="clearfix"></div>
											<div class="row r2">
										<?php } ?>

										<?php if ($i == 5) { ?>
											</div><div class="clearfix"></div>
											<div class="row r3">
										<?php } ?>

										<?php if ($i == 7) { ?>
											</div><div class="clearfix"></div>
											<div class="row r4">
										<?php } ?>

										
									<?php $i++; endwhile; ?>
									</div>
								<?php endif; ?>
								<div class="clearfix"></div>

							</div>

							<div class="standard-left-padd">
								<h2>Our Partners</h2>
							</div>

							<div class="standard-left-padd add-right">
								<div class="supporters primary">
									<a href="http://inspiritfoundation.org/" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/library/images/logo-inspirit.png" /></a>
									<a href="#" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/library/images/MacMillan_logo.png" /></a>
									<a href="https://www.nfb.ca/" target="_blank" class="last"><img src="<?php echo get_template_directory_uri(); ?>/library/images/NFB_Logo.png" /></a>
								</div>

								<div class="supporters">
									<p>In partnership with:</p> 
									<a href="http://www.viarail.ca/en" target="_blank"><img class="no-margin" src="<?php echo get_template_directory_uri(); ?>/library/images/VIA_Rail_Logo.png" /></a>
								</div>

								<div class="supporters">
									<a href="http://www.ryerson.ca/" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/library/images/Ryerson_Logo.png" /></a>
									<a href="http://carleton.ca/" target="_blank"><img src="<?php echo get_template_directory_uri(); ?>/library/images/Carleton_Logo.png" /></a>
									<a href="https://www.mitacs.ca/en" target="_blank" class="last"><img src="<?php echo get_template_directory_uri(); ?>/library/images/Mitacs_Logo.png" /></a>
								</div>
							</div>

							<div class="page-subhead l130">
								<div class="top-line">
									<div class="bg"></div>
									<div class="highlight"></div>
								</div>
								<h4>Contact Us</h4>
							</div>

							<div class="standard-left-padd add-right">
								<div class="contact email">
									<p class="contact-header">
										Email:
									</p>
									<p class="helper">
										<a href="mailto:<?php the_field("contact_email"); ?>" title="<?php the_field("contact_email"); ?>"><?php the_field("contact_email"); ?></a>
									</p>
								</div>
								<div class="contact phone">
									<p class="contact-header">
										Telephone:
									</p>
									<p class="helper">
										<a href="tel:<?php the_field("contact_phone"); ?>" title="<?php the_field("contact_phone"); ?>"><?php the_field("contact_phone"); ?></a>
									</p>
								</div>
								<div class="clearfix"></div>
							</div>

							<?php endwhile; endif; ?>

						</main>


				</div>

			</div>

<?php get_footer(); ?>
