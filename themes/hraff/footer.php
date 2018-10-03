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
        <section class="footer-copyright">&copy <?php echo wp_title('-', true, 'right'); bloginfo('name'); ?></section>
    </article>

    <script src="<?php echo get_template_directory_uri() ?>/scripts/main.js"></script>
</body>
</html>