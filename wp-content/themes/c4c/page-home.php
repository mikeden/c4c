<?php get_header(); ?>

			<div id="content">

				

				<div class="home-wrapper">
					<div class="videoWrapper">
						<iframe src="https://player.vimeo.com/video/2379456?autoplay=1&loop=1&byline=0&title=0" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
					</div>
				</div>

				

				<div id="inner-content" class="wrap cf">

					<div class="home-intro">
						<h1><a href="conversations/" class="alt1">Conversations</a></h1>
						<h1><a href="series/" class="alt1">Series</a></h1>
						<h1><a href="journal/" class="alt1">Journal</a></h1>
						<div class="hr"></div>
						<p>Challenge for Change uses listening and the democratic power of media to foster connections and strengthen relationships between people and communities. </p>
						<p>Along the way, we are telling some pretty amazing stories.</p>
					</div>

					<div class="radio-callout">
						<div class="block">
							<a href="#" class="aqua-btn sm">Play and Go</a>
							<h4>C4C Radio</h4>
							<p>Every C4C Conversation in one convenient playlist</p>
							<div class="clearfix"></div>
						</div>
					</div>

				</div>
				<div class="wrap cf">

					<div class="page-subhead">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>Recent Conversations</h4>
					</div>

							<?php query_posts(array(
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

							<div id="post-<?php the_ID(); ?>" class="cpt">
								<h2><a href="<?php the_permalink() ?>"><?php the_title(); ?></a></h2>
							</div>

							<?php endwhile; ?>

							<?php wp_reset_query(); ?> 


					<p>
						Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dictum ultricies pulvinar. Pellentesque quis metus interdum, pharetra enim et, mollis augue. Etiam at nisi lorem. Aenean in erat est. Praesent faucibus fringilla est non posuere. Duis aliquet augue vel tortor viverra tempus. Phasellus vestibulum iaculis quam in luctus. In laoreet nibh vitae est suscipit varius et eu tortor. Praesent dignissim id quam a porta. Integer et ipsum imperdiet, placerat mi tempor, mollis enim. Curabitur dui dolor, bibendum et ullamcorper quis, consequat sit amet nibh. Nullam venenatis diam mauris, ut semper ante pretium sed.
					</p>
					<p>
						Sed finibus magna sit amet eleifend mattis. Praesent in purus at orci gravida cursus eget eu ex. Aliquam in turpis quis neque rhoncus dapibus sit amet quis ante. Nulla volutpat arcu sed euismod mollis. Aliquam imperdiet ac ipsum et iaculis. Phasellus sit amet felis vel turpis aliquet tempus eget vel elit. Nullam nec felis congue, ultrices ipsum quis, posuere sem. Nullam vitae viverra mi, volutpat finibus quam. Morbi sed urna ligula. Fusce tincidunt magna tempus purus hendrerit, in gravida lectus blandit. Aenean sem arcu, luctus non nunc sit amet, condimentum tempus arcu. Aliquam varius id justo at aliquet. Aliquam cursus sollicitudin justo id pulvinar. Quisque non augue id augue euismod viverra. Integer pharetra, ligula eget pretium viverra, nisl turpis facilisis odio, at blandit nisl est nec dui.
					</p>
					<pp>
						Nam aliquam eleifend quam, ac mollis justo convallis at. Proin justo nisi, pretium sit amet ligula sed, sodales imperdiet ligula. Sed ac metus quis magna accumsan interdum. Nam nec aliquet mi, in pharetra augue. Donec pretium convallis consectetur. Sed non varius dolor. Proin non aliquam neque, vitae euismod velit. Vivamus tincidunt dui quam, in porta quam pretium rhoncus. Vestibulum augue justo, dignissim quis erat non, dictum sodales massa.
					</p>

					<div class="page-subhead l100">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>Featured Series</h4>
					</div>

					<div class="page-subhead l130">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>Our Supporters</h4>
					</div>

					<div class="page-subhead l80">
						<div class="top-line">
							<div class="bg"></div>
							<div class="highlight"></div>
						</div>
						<h4>C4C Radio</h4>
					</div>

					<iframe width="100%" height="300" scrolling="yes" frameborder="no" src="https://w.soundcloud.com/player/?url=https%3A//api.soundcloud.com/playlists/224785489&amp;auto_play=false&amp;hide_related=false&amp;show_comments=true&amp;show_user=true&amp;show_reposts=false&amp;visual=false"></iframe>

				</div>

			</div>

<?php get_footer(); ?>
