<!DOCTYPE html>

<?php get_header(); ?>

    <h1 class="page-heading">
        <?php
            post_type_archive_title();
        ?>
    </h1>

    <div class="card box-shadow filter-card">
        <?php do_action('show_beautiful_filters'); ?>
    </div>

    <section class="cards">

        <?php if (have_posts()): while (have_posts()): the_post();

            get_template_part('card', get_post_format());

        endwhile;
        else: ?>
            <span id="no-results">No results found</span>
        <?php endif; ?>

    </section>

<?php get_footer(); ?>
