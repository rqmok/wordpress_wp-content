<!DOCTYPE html>

<?php get_header(); ?>

    <h1>Latest Events</h1>
    <section class="cards">
        <?php
            $event_posts = get_posts( [
                'post_type' => 'event',
                'numberposts' => 6,
                'meta_key' => 'when',
                'meta_type' => 'DATETIME',
                'orderby' => 'meta_value',
                'order' => 'DESC'
            ] );

            foreach ($event_posts as $post) {
                setup_postdata($post);

                get_template_part('card', get_post_format());
            }
            wp_reset_postdata();
        ?>
    </section>

<?php get_footer(); ?>
