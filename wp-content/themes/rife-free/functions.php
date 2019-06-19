<?php

if ( ! defined( 'ABSPATH' ) ) {
	exit;
} // Exit if accessed directly

/* Here you can insert your functions, filters and actions. */







/* That's all, stop editing! Make a great website!. */

/* Init of the framework */

/* This function exist in WP 4.7 and above.
 * Theme has protection from runing it on version below 4.7
 * However, it has to at least run, to give user info about having not compatible WP version :-)
 */
if( function_exists('get_theme_file_path') ){
	/** @noinspection PhpIncludeInspection */
	require_once( get_theme_file_path( '/advance/class-apollo13-framework.php' ) );
}
else{
	/** @noinspection PhpIncludeInspection */
	require_once( get_template_directory() . '/advance/class-apollo13-framework.php' );
}

$apollo13framework_a13 = new Apollo13Framework();
$apollo13framework_a13->start();
//  Internationalisation
load_theme_textdomain( 'rife-free', get_template_directory() . '/languages' );
load_theme_textdomain( 'rife-free', get_stylesheet_directory() . '/languages' );
//  GET SEARCH FORM
add_filter('get_search_form', "remove_text_search");
function remove_text_search($arg){
    return str_replace('Search', __('Search', 'rife-free'), $arg);
}
//  TESTS UNITAIRES
//  Fonction pour réécrire les titres des pages
/*function test(){    
    remove_action( 'wp_head', '_wp_render_title_tag', 1);
    add_filter('wp_title', 'ma_fonction_1');
    function ma_fonction_1($title){
        return $title.' | '.get_bloginfo('name');
    }
    add_filter('wp_head', 'ma_fonction_2', 0);
    function ma_fonction_2($arg){
        echo '<title>';
        if(is_front_page()) {
            echo get_bloginfo('name');
        } else {
            wp_title('', true, '');
        }
        echo '</title>';
    }
}
test();*/