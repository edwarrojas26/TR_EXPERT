const menu = document.querySelector('.menu');
const hamburger = document.querySelector('.hamburguer');

hamburger.onclick = () => {
    for (let i = 0; i < menu.classList.length; i++) {

        const menuClass = menu.classList[i]

        if (menuClass === "outside") {
            menu.classList.remove('outside')
            menu.classList.add('open')

        } else if (menuClass === "open") {
            menu.classList.remove('open')
            menu.classList.add('outside')
        }

    }
}