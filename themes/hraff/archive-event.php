<!DOCTYPE html>

<?php get_header(); ?>

    <h1 class="page-heading">Events</h1>

    <section class="cards">

        <?php if (have_posts()): while (have_posts()): the_post();

            get_template_part('card', get_post_format());

        endwhile; endif; ?>

    </section>

<?php get_footer(); ?>
