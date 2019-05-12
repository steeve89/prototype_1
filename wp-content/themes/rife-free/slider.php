<?php 
//  On recupère la liste des pages
global $wpdb;
$results = $wpdb->get_results('SELECT * FROM '.$wpdb->prefix.'posts WHERE post_type="page" AND post_status="publish"');
$tab = array();
foreach ($results as $key => $value) {
    if(has_post_thumbnail($value)) {
        $tab[$key]['title'] = $value->post_title;
        $tab[$key]['link'] = $value->guid;
        $tab[$key]['image'] = get_the_post_thumbnail($value);
    }
}
?>
<?php if(!empty($tab)): ?>
<div class="slider-container">
    <div id="slides">
        <?php foreach($tab as $value ):?>
            <a href="<?php echo $value['link']; ?>" title=""><?php echo $value['image']; ?></a>         
        <?php endforeach; ?>        
    </div>
    <div class="clearfix"></div>
</div>
<?php endif; ?>

