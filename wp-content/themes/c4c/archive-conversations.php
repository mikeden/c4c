<?php get_header(); ?>

			<div id="content">

				<div id="inner-content" class="wrap cf">

						<main id="main" class="m-all t-all d-all cf" role="main" itemscope itemprop="mainContentOfPage" itemtype="http://schema.org/Blog">

							<h1 class="page-title" itemprop="headline">Conversations</h1>
							
							<?php 
							$loop = new WP_Query( array( 
							'post_type' => 'conversations',
							'post_status'=> 'publish',
							'posts_per_page' => 4
							)); 
							
							while ( $loop->have_posts() ) : $loop->the_post(); ?>
							
                             <div class="">
                             	<div class="detail">
                             		<a href="<?php the_permalink(); ?>">
		                                <p class="date">
		                                	<?php echo get_the_date(); ?>
		                                </p>
		                                <h3>
							  				<?php the_title(); ?>
		                                </h3>
	                                </a>
                            	</div>
                            </div>
                           	
							<?php $i++; ?>
						<?php endwhile; wp_reset_query(); ?>


						</main>


				</div>

			</div>

<?php get_footer(); ?>
