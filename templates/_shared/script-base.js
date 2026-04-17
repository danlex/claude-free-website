// Scroll-reveal animations
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

// Active nav link on scroll
const sections = document.querySelectorAll('section[id]');
const navLinks = document.querySelectorAll('.nav-links a[href^="#"]');

const navObserver = new IntersectionObserver(
  (entries) => {
    entries.forEach((entry) => {
      if (entry.isIntersecting) {
        const id = entry.target.id;
        navLinks.forEach((link) => {
          link.classList.toggle('active', link.getAttribute('href') === `#${id}`);
        });
      }
    });
  },
  { threshold: 0.5 }
);

sections.forEach((section) => navObserver.observe(section));

// Mobile nav toggle
const navToggle = document.querySelector('.nav-toggle');
const navLinks$ = document.querySelector('.nav-links');

if (navToggle && navLinks$) {
  navToggle.addEventListener('click', () => {
    navLinks$.classList.toggle('open');
    navToggle.setAttribute('aria-expanded', navLinks$.classList.contains('open'));
  });

  // Close on link click
  navLinks$.querySelectorAll('a').forEach((link) => {
    link.addEventListener('click', () => navLinks$.classList.remove('open'));
  });
}
