const track = document.querySelector('.carousel-track');
const slides = Array.from(track.children);
const nextButton = document.querySelector('.next-btn');
const prevButton = document.querySelector('.prev-btn');
const slideWidth = slides[0].getBoundingClientRect().width;

// Arrange slides next to each other
const setSlidePosition = (slide, index) => {
  slide.style.left = slideWidth * index + 'px';
};
slides.forEach(setSlidePosition);

// Move to next slide
nextButton.addEventListener('click', () => {
  const currentSlide = track.querySelector('.current-slide');
  const nextSlide = currentSlide.nextElementSibling;
  const amountToMove = nextSlide.style.left;
  track.style.transform = 'translateX(-' + amountToMove + ')';
  currentSlide.classList.remove('current-slide');
  nextSlide.classList.add('current-slide');
});

// Move to previous slide
prevButton.addEventListener('click', () => {
  const currentSlide = track.querySelector('.current-slide');
  const prevSlide = currentSlide.previousElementSibling;
  const amountToMove = prevSlide.style.left;
  track.style.transform = 'translateX(-' + amountToMove + ')';
  currentSlide.classList.remove('current-slide');
  prevSlide.classList.add('current-slide');
});
