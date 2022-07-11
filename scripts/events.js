$(document).ready(function () {

  var years = ['.welcome_nav', '.pnd_nav', '.conference_nav', '.wie_nav', '.gbody_nav']
  function updateNav(target) {
    $(target).click(function () {
      years.forEach(function (item) {
        if (item == target) {
          console.log(item);
          $(item).addClass('active-section');
        }
        else {
          $(item).removeClass('active-section');
        }
      });
    });

  }

  updateNav('.welcome_nav');
  updateNav('.pnd_nav');
  updateNav('.conference_nav');
  updateNav('.wie_nav');
  updateNav('.gbody_nav');

});