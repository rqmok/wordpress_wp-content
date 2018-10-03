
// Toggles the burger menu in mobile layout
function toggleMenu() {
    document.querySelector('html').classList.toggle('menu-open');
}

document.querySelector('#burger-menu').addEventListener('touchend', toggleMenu);
