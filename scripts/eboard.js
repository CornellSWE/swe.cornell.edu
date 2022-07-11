$(document).ready(function () {

  var eboard = ['.presidents', '.finance', '.fundraising', '.outreach', '.corporate',
    '.careerdev', '.studentservices', '.communications', '.outreach', '.conference']
  function updateNav(target) {
    $(target).click(function () {
      eboard.forEach(function (item) {
        if (item == target) {
          $(item).addClass('active-section');
        }
        else {
          $(item).removeClass('active-section');
        }
      });
    });

  }

  updateNav(".presidents");
  updateNav('.finance');
  updateNav('.fundraising');
  updateNav('.outreach');
  updateNav('.corporate');
  updateNav('.careerdev');
  updateNav('.studentservices');
  updateNav('.communications');
  updateNav('.outreach');
  updateNav('.conference');

});

