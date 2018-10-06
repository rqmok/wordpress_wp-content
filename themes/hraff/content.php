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
    <h2><?php the_field('subtitle'); ?></h2>
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