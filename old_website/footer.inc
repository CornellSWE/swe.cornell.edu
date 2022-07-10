<div class="footer wrapper gray">
    <div class="row">
      <div class="large-4 columns">
        <h1>
          SWE
        </h1>
      </div>
      <div class="large-8 columns">
      </div>
    </div>
    </div>
    <script src="bower_components/jquery/jquery.js"></script>
    <script src="bower_components/foundation/js/foundation.js"></script>
    <script src="js/app.js"></script>
    <script>
      function search() {
        $('#search-button').remove();
        $('#search').fadeToggle(300);
      }

      $(document).ready(function () {

        // move the bullets
        $(function(){
            var bullets = $('.orbit-bullets-container');
            bullets.insertBefore($(".orbit-container"));
        });

        var timer;
        var originalHeight = $('#hero').css('height')
        $('#view-gallery').on('click', function () {

            $(".hero-overlay").fadeOut(200);
            $(".hero-text").fadeOut(200);
            $(".contain-to-grid").fadeOut(200);
            $("#hero").css('height', '600px')
        });

        var $window = $(window);
        var $text = $('.hero-text');
        var $overlay = $('.hero-overlay');
        var originalColor = '#00a45d';
        var originalOpacity = parseFloat($text.css('opacity'));
     
        $window.scroll(function() {
          if ($window.scrollTop() < 480) {
            var factor = (1 - $window.scrollTop() / 300);

            // var newColor = ''.concat('rgb(', Math.round(originalColor.r * factor), ',', 
            //   Math.round(originalColor.g * factor), ',',
            //   Math.round(originalColor.b * factor), ')');
            // overlay.css({ backgroundColor: newColor });
            $text.css('opacity', factor);
            // $overlay.css('background-color', LightenDarkenColor(originalColor, -5));
          }
        }); 
      });
    </script>