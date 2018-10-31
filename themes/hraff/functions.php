<?php

// Enable 'Featured Image' in post/page editor
add_theme_support( 'post-thumbnails' );

// Define 'Main Menu' as a selectable location in the menu editor
register_nav_menus( [ 'main-menu' => 'Main Menu' ] );

// Define 'Footer Links' as a selectable location in the menu editor
register_nav_menus( [ 'footer-links' => 'Footer Links' ] );

// Hook the default 'excerpt_length' action and run a custom function
add_filter( 'excerpt_length', 'custom_excerpt_length' );

// Return a custom length of 25 words 
function custom_excerpt_length() {
	return 25;
}

// Hook the default 'excerpt_more' action and run a custom function
add_filter( 'excerpt_more', 'custom_excerpt_link' );

// Return HTML to create a hyperlink that links to the full post
function custom_excerpt_link() {
	return ' <a href="'.get_permalink(). '">More info >></a>';
}

// Order events by their date in descending order
// Newest events will be displayed at the top
add_action( 'pre_get_posts', 'sort_events_by_date_desc' );
function sort_events_by_date_desc( $query ) {
	if ( is_archive() && $query->is_main_query() ):
		$query->query_vars[ 'meta_key' ] = 'when';
		$query->query_vars[ 'meta_type' ] = 'DATETIME';
		$query->query_vars[ 'orderby' ] = 'meta_value';
		$query->query_vars[ 'order' ] = 'DESC';
	endif;
}

?>