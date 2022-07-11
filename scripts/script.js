$(document).ready(function () {
  var contentSection = $('.content-section');
  var navigation = $('nav');

  //when a nav link is clicked, smooth scroll to the section
  navigation.on('click', 'a', function (event) {
    event.preventDefault(); //prevents previous event
    smoothScroll($(this.hash));
  });

  //update navigation on scroll...
  $(window).on('scroll', function () {
    updateNavigation();
  })
  //...and when the page starts
  updateNavigation();

  /////FUNCTIONS
  function updateNavigation() {
    contentSection.each(function () {
      var sectionName = $(this).attr('id');
      var navigationMatch = $('nav a[href="#' + sectionName + '"]');
      if (($(this).offset().top - $(window).height() / 2 < $(window).scrollTop()) &&
        ($(this).offset().top + $(this).height() - $(window).height() / 2 > $(window).scrollTop())) {
        navigationMatch.addClass('active-section');
      }
      else {
        navigationMatch.removeClass('active-section');
      }
    });
  }
  function smoothScroll(target) {
    $('body,html').animate({
      scrollTop: target.offset().top
    }, 800);
  }
});
