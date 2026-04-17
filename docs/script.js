// Scroll-reveal
const revealObserver = new IntersectionObserver(
  (entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        entry.target.classList.add('visible');
        revealObserver.unobserve(entry.target);
      }
    });
  },
  { threshold: 0.1, rootMargin: '0px 0px -40px 0px' }
);
document.querySelectorAll('.reveal').forEach((el) => revealObserver.observe(el));

// Floating navbar — show after scrolling past hero
const floatnav = document.getElementById('floatnav');
const heroSection = document.getElementById('hero');
if (floatnav && heroSection) {
  const heroObserver = new IntersectionObserver(
    (entries) => {
      floatnav.classList.toggle('visible', !entries[0].isIntersecting);
    },
    { threshold: 0.15 }
  );
  heroObserver.observe(heroSection);
}

// Mobile nav toggle
const toggle = document.querySelector('.floatnav-toggle');
const navLinks = document.querySelector('.floatnav-links');
if (toggle && navLinks) {
  toggle.addEventListener('click', () => {
    const expanded = toggle.getAttribute('aria-expanded') === 'true';
    toggle.setAttribute('aria-expanded', String(!expanded));
    navLinks.classList.toggle('open', !expanded);
  });
  navLinks.querySelectorAll('a').forEach((link) => {
    link.addEventListener('click', () => {
      navLinks.classList.remove('open');
      toggle.setAttribute('aria-expanded', 'false');
    });
  });
}

// Smooth scroll for anchor links
document.querySelectorAll('a[href^="#"]').forEach((a) => {
  a.addEventListener('click', (e) => {
    const target = document.querySelector(a.getAttribute('href'));
    if (target) {
      e.preventDefault();
      target.scrollIntoView({ behavior: 'smooth', block: 'start' });
    }
  });
});
