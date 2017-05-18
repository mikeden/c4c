<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">

						<div class="standard-page-header">
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

							<div class="standard-left-padd add-right">

								<article id="post-<?php the_ID(); ?>" <?php post_class( 'cf' ); ?> role="article" itemscope itemtype="http://schema.org/BlogPosting">

									<section class="entry-content cf" itemprop="articleBody">
										<?php
											the_content();
										?>
									</section>


								</article>

							</div>

							<div class="page-subhead l130">
								<div class="top-line">
									<div class="bg"></div>
									<div class="highlight"></div>
								</div>
								<h4>Contacts Us</h4>
							</div>

							<?php endwhile; endif; ?>

						</main>


				</div>

			</div>

<?php get_footer(); ?>
