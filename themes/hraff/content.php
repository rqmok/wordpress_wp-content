<?php if (get_field('youtube_video_id')) { ?>
    <header class="box-shadow">
            <p class="video">
                <iframe width="560" height="315" src="https://www.youtube.com/embed/<?php the_field('youtube_video_id'); ?>" frameborder="0" allow="autoplay; encrypted-media"
                    allowfullscreen></iframe>
            </p>
    </header>
<?php } elseif (get_field('cover_photo')) { ?>
    <div id="cover-photo" style="background-image: url(<?php the_field('cover_photo'); ?>);"></div>
<?php } ?>
<section id="content-header">
    <h1><?php the_title(); ?></h1>
    
    <?php if ( get_field('subtitle') ) { ?>
        <h2><?php the_field('subtitle'); ?></h2>
    <?php } ?>
</section>
<main class="content">
    <div id="content-text">
        <?php the_content(); ?>
    </div>
    <?php get_sidebar() ;?>
</main>
<section id="sponsor-banner">
    <img src="<?php echo get_template_directory_uri() ?>/images/banner.gif" alt="Sponser Advertisement">
</section>
<section class="cards">
    <?php
        $event_posts = get_posts( [
            'post_type' => 'event',
            'numberposts' => 3,
            'orderby' => 'rand'
        ] );

        foreach ( $event_posts as $post ) {
            setup_postdata($post);
        
            get_template_part('card', get_post_format());

        }
        wp_reset_postdata();
    ?>
</section>