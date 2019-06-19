<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #mid div and all content after.
 */
if ( ! defined( 'ABSPATH' ) ) {
    exit;
} // Exit if accessed directly


global $apollo13framework_a13;
?>
	</div><!-- #mid -->

<?php
//in case of maintenance mode - we don't print HTML footer
if( ! apply_filters('apollo13framework_only_content', false) ){
	apollo13framework_theme_footer();
	apollo13framework_footer_for_header_modules();
}
apollo13framework_footer_for_site_modules();
?>

	</div><!-- .whole-layout -->
<?php
    /* Always have wp_footer() just before the closing </body>
         * tag of your theme, or you will break many plugins, which
         * generally use this hook to reference JavaScript files.
         */
    wp_footer();
?>
<style id='a13-posts-grid-1-inline-css_1' type='text/css'>
    .posts-list .layout-full.with-sidebar .content-box, 
    .posts-list .layout-full_fixed.with-sidebar .content-box, 
    .posts-list .layout-full_padding.with-sidebar .content-box {
        margin: 0 0 0 0;
        width: 69%;
    }
    .layout-full #content, .layout-full_fixed #content, .layout-full_padding #content, .default404 .page-background, body.password-protected .page-background, .posts-list.search-no-results .layout-full #content, .posts-list.search-no-results .layout-full_fixed #content, .posts-list.search-no-results .layout-full_padding #content, .bricks-frame .formatter, .posts_horizontal .archive-item, .variant-under .caption, .works-list-page .pre-content-box, .single-album .album-content, .single-album .formatter { background: none; }
    .layout-parted .content-box, .albums-list-page .pre-content-box, .posts-list .layout-full_padding #secondary, .posts-list .layout-full_fixed #secondary, .posts-list .layout-full #secondary, .layout-parted #secondary, .posts-list.search-no-results .layout-parted .content-box { background: #fff; }
    #footer { background: #454545; }
    
    @media only screen and (max-width: 832px) {
        #header .head .header-left .logo-container { padding-bottom: 10px; }
    }
    
    @media only screen and (max-width: 768px) {
        .posts-list .layout-full.with-sidebar .content-box, 
        .posts-list .layout-full_fixed.with-sidebar .content-box, 
        .posts-list .layout-full_padding.with-sidebar .content-box {
            display: block;
            width: 100%;
            padding-bottom: 10px; 
	}
	.posts-list #secondary{
            display: block;
            width: 100%;
	}
    }
    
    @media only screen and (max-width: 600px) {
        #header .head .header-left .logo-container { padding: 0 10px; }
    }
    
    @media only screen and (max-width: 600px) {
        .posts-list .layout-full.with-sidebar .content-box, 
        .posts-list .layout-full_fixed.with-sidebar .content-box, 
        .posts-list .layout-full_padding.with-sidebar .content-box {
            display: block;
            width: 100%;
            padding-bottom: 10px;
	}
	.posts-list #secondary {
            display: block;
            width: 100%;
	}
    }
    
    @media only screen and (max-width: 480px) {
        .posts-list .layout-full.with-sidebar .content-box,
        .posts-list .layout-full_fixed.with-sidebar .content-box, 
        .posts-list .layout-full_padding.with-sidebar .content-box {
            display: block;
            width: 100%;
            padding-bottom: 10px;
	}
	.posts-list #secondary{
            display: block;
            width: 100%;
	}
    }
    
    @media only screen and (max-width: 400px) {
        .posts-list .layout-full.with-sidebar .content-box,
        .posts-list .layout-full_fixed.with-sidebar .content-box, 
        .posts-list .layout-full_padding.with-sidebar .content-box {
            display: block;
            width: 100%;
            padding-bottom: 10px;
	}
	.posts-list #secondary {
            display: block;
            width: 100%;
	}
    }
</style>
</body>
</html>