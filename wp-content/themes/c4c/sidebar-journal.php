				<div id="sidebar1" class="sidebar m-all t-1of3 d-2of7 last-col cf" role="complementary">

					<ul>
						<li class="sidebar-header">Categories</li>
						<?php wp_list_cats(); ?>
					</ul>
					
					

					


					<ul class="posts">
						<li class="sidebar-header">Recent Posts</li>
						<?php
						  $query_args = array(
						    'post_type' => 'post',
						    'posts_per_page' => 3
						  );
						  // create a new instance of WP_Query
						  $the_query = new WP_Query( $query_args );
						?>

						<?php if ( $the_query->have_posts() ) : while ( $the_query->have_posts() ) : $the_query->the_post(); // run the loop ?>
						<?php $image = get_field('photo'); ?>
						  <li>
						  	<?php if( !empty($image) ): ?>
							  <div class="photo" style="background-image:url(<?php echo $image['url']; ?>)"></div>
							 <?php endif; ?>
							 <p class="date"><?php echo get_the_date(); ?></p>
						    <a href="<?php the_permalink(); ?>"><?php echo the_title(); ?></a>
						    <div class="clearfix"></div>
						  </li>
						<?php endwhile; endif; ?>
					</ul>


					<ul>
						<li class="sidebar-header">Newsletter</li>
					</ul>


				</div>
