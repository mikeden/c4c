<?php
/*
The comments page for Bones
*/

// don't load it if you can't comment
if ( post_password_required() ) {
  return;
}

?>

<?php // You can start editing here. ?>

  <?php if ( have_comments() ) : ?>

    <!--<h3 id="comments-title" class="h2"><?php comments_number( __( '<span>No</span> Comments', 'bonestheme' ), __( '<span>One</span> Comment', 'bonestheme' ), __( '<span>%</span> Comments', 'bonestheme' ) );?></h3>-->

    <section class="commentlist">
      <?php
        wp_list_comments( array(
          'style'             => 'div',
          'short_ping'        => true,
          'avatar_size'       => 40,
          'callback'          => 'bones_comments',
          'type'              => 'all',
          'reply_text'        => __('Reply', 'bonestheme'),
          'page'              => '',
          'per_page'          => '',
          'reverse_top_level' => null,
          'reverse_children'  => ''
        ) );
      ?>
    </section>

    <?php if ( get_comment_pages_count() > 1 && get_option( 'page_comments' ) ) : ?>
    	<nav class="navigation comment-navigation" role="navigation">
      	<div class="comment-nav-prev"><?php previous_comments_link( __( '&larr; Previous Comments', 'bonestheme' ) ); ?></div>
      	<div class="comment-nav-next"><?php next_comments_link( __( 'More Comments &rarr;', 'bonestheme' ) ); ?></div>
    	</nav>
    <?php endif; ?>

    <?php if ( ! comments_open() ) : ?>
    	<p class="no-comments"><?php _e( 'Comments are closed.' , 'bonestheme' ); ?></p>
    <?php endif; ?>

  <?php endif; ?>

  <?php $comments_args = array(
        // Change the title of send button 
        'label_submit' => __( 'Submit Comment', 'textdomain' ),
        'title_reply_before' => __( '<h4 id="reply-title" class="comment-reply-title">', 'textdomain' ),
        'title_reply_after' => __( '</h4>', 'textdomain' ),
        // Change the title of the reply section
        'title_reply' => __( 'Join the Conversation', 'textdomain' ),
        // Remove "Text or HTML to be displayed after the set of comment fields".
        'comment_notes_after' => '',
        // Redefine your own textarea (the comment body).
        'comment_field' => '<p class="comment-form-comment"><label for="comment">' . _x( 'Comment', 'noun' ) . '</label><br /><textarea id="comment" name="comment" aria-required="true"></textarea></p>',
);
comment_form( $comments_args ); ?>

