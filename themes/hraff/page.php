<!DOCTYPE html>

<?php get_header(); ?>

    <?php if (have_posts()): while (have_posts()): the_post(); ?>
        <section id="content-header">
            <h1><?php the_title(); ?></h1>
        </section>
        <main class="content">
            <div id="content-text">
                <?php the_content(); ?>
            </div>
        </main>
    <?php endwhile; endif; ?>

<?php get_footer(); ?>
