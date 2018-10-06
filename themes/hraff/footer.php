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
            <?php
                }
                wp_reset_postdata();
            ?>
        </section>
        <section class="sponsor-images">
            <img src="<?php echo get_template_directory_uri() ?>/images/bankaustralia.png" alt="Bank Australia">
            <img src="<?php echo get_template_directory_uri() ?>/images/lush.png" alt="Lush">
            <img src="<?php echo get_template_directory_uri() ?>/images/theguardian.png" alt="The Guardian">
            <img src="<?php echo get_template_directory_uri() ?>/images/thesaturdaypaper.png" alt="The Saturday Paper">
        </section>
        <section class="separator-container">
            <div class="separator"></div>
        </section>
        <section class="festival-dates">
            <div class="festival-date">
                Melbourne<br />
                3 - 17 May
            </div>
            <div class="festival-date">
                Launceston<br />
                19 - 20 May
            </div>
            <div class="festival-date">
                Canberra<br />
                29 May - 5 June
            </div>
        </section>
        <section class="footer-links-input-container">
            <div class="footer-links">
                <?php wp_nav_menu(['theme_location' => 'footer-links']) ?>
            </div>
            <div class="footer-email-input">
                <form>
                    <input class="email-text-input" type="email" placeholder="Email Address" />
                    <button class="button subscribe box-shadow" type="submit">Subscribe</button>
                </form>
            </div>
        </section>
        <section class="footer-copyright">&copy <?php bloginfo('name'); ?></section>
    </article>

    <script src="<?php echo get_template_directory_uri() ?>/scripts/main.js"></script>

    <?php wp_footer(); ?>
</body>
</html>