function initUpdateNavbarOnScroll() {
  const navbar = document.querySelector('.homepage-navbar');
  window.addEventListener('scroll', () => {

    console.log(window.scrollY);
    console.log(window.innerHeight);
      if (window.scrollY >= window.innerHeight) {
      navbar.classList.remove('homepage-navbar')
      navbar.classList.add('navbar-wagon-white');
    } else {
      navbar.classList.remove('navbar-wagon-white');
      navbar.classList.add('homepage-navbar');
    }
  });
}

export { initUpdateNavbarOnScroll };
