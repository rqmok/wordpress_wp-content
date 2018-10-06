<!DOCTYPE html>

<?php get_header(); ?>

    <h1 class="page-heading">Events</h1>

    <section class="cards">

        <?php if (have_posts()): while (have_posts()): the_post(); ?>
            
            <div class="card box-shadow">
                <div class="card-image">
                    <img width="100%" src="<?php the_post_thumbnail_url(); ?>" />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <?php the_title(); ?>
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

        <?php endwhile; endif; ?>

    </section>

<?php get_footer(); ?>
