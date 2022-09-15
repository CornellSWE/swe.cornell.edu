$(document).ready(function () {

  var years = ['.2003', '.2007', '.2009', '.2012', '.2013',
    '.2014', '.2015', '.2016', '.2017', '.2018', '.2019', '.2020', '.2021', '.2022']
  function updateNav(target) {
    $(target).click(function () {
      years.forEach(function (item) {
        if (item == target) {
          $(item).addClass('active-section');
        }
        else {
          $(item).removeClass('active-section');
        }
      });
    });

  }

  updateNav(".2003");
  updateNav('.2007');
  updateNav('.2009');
  updateNav('.2012');
  updateNav('.2013');
  updateNav('.2014');
  updateNav('.2015');
  updateNav('.2016');
  updateNav('.2017');
  updateNav('.2018');
  updateNav('.2019');
  updateNav('.2020');
  updateNav('.2021');
  updateNav('.2022');

});