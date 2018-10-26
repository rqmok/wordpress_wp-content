<!DOCTYPE html>

<?php get_header(); ?>

    <h1 class="page-heading">
        <?php
            $title = explode(': ', get_the_archive_title())[1];
            echo $title;
        ?>
    </h1>

    <?php
        $taxonomies = get_taxonomies( array( '_builtin' => false ) );

        foreach( $taxonomies as $taxonomy ) {
    ?>
        <section class="filter-container">
            <h2><?php echo $taxonomy ?></h2>
            <ul class="filters">
                <?php
                    $terms = get_terms([
                        'taxonomy' => $taxonomy,
                        'hide_empty' => false,
                    ]);

                    foreach ( $terms as $term ) {
                ?>
                    <li <?php if (strtolower($title) == strtolower($term->name)) { echo 'class="selected"'; } ?>>
                        <a href="<?php echo get_term_link($term, $taxonomy) ?>">
                            <?php echo $term->name ?>
                        </a>
                    </li>
                <?php } ?>
            </ul>
        </section>
    <?php } ?>

    <section class="cards">

        <?php if (have_posts()): while (have_posts()): the_post();

            get_template_part('card', get_post_format());

        endwhile;
        else: ?>
            <span id="no-results">No results found</span>
        <?php endif; ?>

    </section>

<?php get_footer(); ?>
