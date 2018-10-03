<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title><?php wp_title('-', true, 'right'); bloginfo('name'); ?></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://fonts.googleapis.com/css?family=Roboto:300" rel="stylesheet">
    <link rel="stylesheet" type="text/css" media="screen" href="<?php echo get_stylesheet_uri(); ?>" />
    <?php wp_head(); ?>
</head>

<body>
    <nav class="desktop">
        <img class="logo" src="<?php echo get_template_directory_uri() ?>/images/logo.svg" alt="Human Rights Arts and Film Festival">
        <ul class="nav-links">
            <?php wp_nav_menu(['theme_location' => 'main-menu']); ?>
        </ul>
        <ul class="nav-icons">
            <li>
                <img src="<?php echo get_template_directory_uri() ?>/images/user.svg" alt="Profile">
            </li>
            <li>
                <img src="<?php echo get_template_directory_uri() ?>/images/cart.svg" alt="Cart">
            </li>
            <li>
                <img src="<?php echo get_template_directory_uri() ?>/images/search.svg" alt="Search">
            </li>
        </ul>
    </nav>

    <div class="mobile box-shadow">
            <div id="burger-menu">
                <div class="burger-line" id="burger-line-1"></div>
                <div class="burger-line" id="burger-line-2"></div>
            </div>
        
            <img class="logo" src="<?php echo get_template_directory_uri() ?>/images/logo.svg" alt="Human Rights Arts and Film Festival">
        
            <img id="search-icon" src="<?php echo get_template_directory_uri() ?>/images/search.svg" alt="Search">
    </div>

    <nav class="mobile menu">
        <ul class="nav-links">
            <li>
                <a href="#">About</a>
            </li>
            <li>
                <a href="#">Program</a>
            </li>
            <li>
                <a href="#">Cineseeds</a>
            </li>
            <li>
                <a href="#">News</a>
            </li>
            <li>
                <a href="#">Our Impact</a>
            </li>
            <li>
                <a href="#">Get Involved</a>
            </li>
            <li>
                <a href="#">Contact Us</a>
            </li>
        </ul>
        <ul class="nav-icons">
            <li>
                <img src="<?php echo get_template_directory_uri() ?>/images/user.svg" alt="Profile">
            </li>
            <li>
                <img src="<?php echo get_template_directory_uri() ?>/images/cart.svg" alt="Cart">
            </li>
        </ul>
    </nav>

    <article class="main-content-area">