<aside id="content-right-column">
    <button class="button buy-tickets box-shadow">Buy Tickets</button>
    <div class="aside-info-container">
        <?php if(get_field('classification')) { ?>
            <div class="aside-info">
                <div class="aside-info-header">Classification</div>
                <div class="aside-info-content"><?php the_field('classification'); ?></div>
            </div>
        <?php } ?>
        <div class="aside-info">
            <div class="aside-info-header">When</div>
            <div class="aside-info-content"><?php the_field('when'); ?></div>
        </div>
        <div class="aside-info">
            <div class="aside-info-header">Where</div>
            <div class="aside-info-content">
                <?php
                    echo get_field('where').'<br>';
                    the_field('city');
                ?>
            </div>
        </div>
        <div class="social-media-icons">
            <img width="50px" height="50px" src="<?php echo get_template_directory_uri() ?>/images/facebook.svg">
            <img width="50px" height="50px" src="<?php echo get_template_directory_uri() ?>/images/twitter.svg">
            <img width="50px" height="50px" src="<?php echo get_template_directory_uri() ?>/images/googleplus.svg">
            <img width="50px" height="50px" src="<?php echo get_template_directory_uri() ?>/images/pinterest.svg">
            <img width="50px" height="50px" src="<?php echo get_template_directory_uri() ?>/images/email.svg">
        </div>
    </div>
</aside>