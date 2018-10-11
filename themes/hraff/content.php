<header>
    <?php if (get_field('youtube_video_id')) { ?>
        <p class="video">
            <iframe width="560" height="315" src="https://www.youtube.com/embed/<?php the_field('youtube_video_id'); ?>" frameborder="0" allow="autoplay; encrypted-media"
                allowfullscreen></iframe>
        </p>
    <?php } ?>
</header>
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
    <img src="<?php get_template_directory_uri() ?>/images/banner.gif" alt="Sponser Advertisement">
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
    ?>
        <div class="card box-shadow">
            <div class="card-image">
                <a href="<?php the_permalink(); ?>"><img width="100%" src="<?php the_post_thumbnail_url(); ?>" />
            </div>
            <div class="card-content">
                <div class="card-title">
                    <a href="<?php the_permalink(); ?>"><?php the_title(); ?>
                </div>
                <div class="card-description">
                    <?php
                        if (str_word_count(get_field('summary')) <= 25) {
                            the_field('summary');
                        }
                    ?>
                </div>
                <div class="card-event-date">
                    <?php echo date_format(date_create(get_field('when')), 'D d M').' '.get_field('city'); ?>
                </div>
                <div class="card-action-link">
                    <a href="<?php the_permalink(); ?>">More info >></a>
                </div>
            </div>
        </div>
    <?php
        }
        wp_reset_postdata();
    ?>
</section>