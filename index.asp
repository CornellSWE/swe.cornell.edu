<!doctype html>
<html class="no-js" lang="en">
  <head>
    <link rel="stylesheet" type="text/css" href="stylesheets/app.css" />
  </head>
  <!--#include file="head.inc"-->
  <body>
    <!--#include file="top-bar.inc"-->
    <div id="hero">
      
      <div class="progress-bar"></div>
      <ul class="example-orbit" data-orbit data-options="animation:slide;
                  pause_on_hover:true;
                  animation_speed:500;
                  slide_number:false;">
        <li>
          <img src="/images/slide1.jpg" alt="slide 1" />
        </li>
        <li>
          <img src="/images/slide2.jpg" alt="slide 2" />
        </li>
        <li>
          <img src="/images/slide3.jpg" alt="slide 3" />
        </li>
        <li>
          <img src="/images/slide4.jpg" alt="slide 4" />
        </li>
  
        <li>
          <img src="/images/slide5.jpg" alt="slide 5" />
        </li>
        <li>
          <img src="images/slide6.jpg" alt="slide 6" />
        </li>

      </ul>
      <div class="row hero-text">
        <div class="12-small columns">

          <h1>
            <span class="green">Society of</span> <br>
            <span class="green">Women</span> <br>
            <span class="green">Engineers</span> 
            <br>
            <span class="green">@ Cornell</span>
          </h1>
<!--           <a id="view-gallery" class="button">
            View Gallery
          </a> -->
        </div>
      </div>
<!--       <div class="text-center hero-overlay">
 -->
        
      </div>
    </div>

    <div class="hero-bottom text-center">
    <div class="row">
      <div class="large-12 columns">
        <p>
          Aspiring. Advancing. Achieving.
        </p>
      </div>
    </div>
    </div>
    <div class="arrow"></div>
    <div class="wrapper gray inset">
      <div class="row">
        <div class="large-12 columns">
          <h4>
            About
          </h4>
          <p>
            The Cornell Student Section of the Society of Women Engineers was charted on November 9, 1972. Since then, we have grown to be one of the largest student organizations on campus, with over 250 members. Membership for SWE is open to all (male and female) undergraduate and graduate students in engineering and technical fields.

Each year, we run numerous programs and events to promote engineering, diversity, career and professional development, academic support, and pre-college education. These include many outreach programs in and around the Ithaca community, various social programs, dinners, luncheons, and over 100 company information sessions.

          </p>
          <h5>
          Our Mission
          </h5>
          <p>
           The Cornell Student Section of the Society of Women Engineers promotes women in Engineering by advocating the importance of diversity and by uniting resources to encourage academic, leadership, professional, and personal excellence for the entire Engineering community of today and tomorrow.
          </p>
        </div>
    </div>
    </div>
    <div class="row wrapper text-center">

     <!-- <div class="large-12 columns">
        <h4>
          Upcoming Info Sessions
        </h4>
    <div class="wrapper">
      <div class="row">
        <div class="large-12 columns">
  <table><tr><td><b>MITRE</b></td><td> <b>Moog, Inc.</b></td> <td> <b>3M Company</b></td><td><b>Andreessen Horowitz</b></td><td><b>Procter & Gamble</b></td></tr><tr><td> August 29, 2016</td><td>August 29, 2016 </td> <td> August 29, 2016</td><td> August 31, 2016</td><td> September 8, 2016</td></tr><tr><td> 6:00 PM</td><td>6:00 PM </td> <td> 7:30 PM</td><td> 6:00 PM</td><td> 6:00 PM</td></tr><tr><td> Phillips 213</td><td>Olin 218</td> <td> Olin 155</td><td> Phillips 403</td><td> Hollister B14</td></tr><tr><td> Pizza, cookies, and soda will be served</td><td>Pizza, cookies, and soda will be served</td> <td> Pizza, cookies, and soda will be served</td><td> Chipotle will be served</td><td> Cookies and soda will be served</td></tr><tr><td>Targeted towards any CS/Engineering students</td><td>Targeted towards seniors/master/co-ops in Electrical & Computer, Mechanical, Industrial/Systems Engineering</td> <td> Targeted towards sophomores/juniors/seniors in any major</td><td> Targeted towards juniors and seniors in Computer Science</td><td> Targeted towards any students in CS/Engineering</td></tr></table>
</p>
</div>
</div>
</div>-->
        <p>
        <iframe src="https://www.google.com/calendar/embed?src=cornell.edu_07lvbs7satl07tdphlt387m9e0%40group.calendar.google.com&ctz=America/New_York" style="border: 0" width="800" height="600" frameborder="0" scrolling="no"></iframe>
        </p>
        <p>

        <!-- <iframe src="https://www.google.com/calendar/embed?mode=AGENDA&amp;height=600&amp;wkst=1&amp;bgcolor=%23FFFFFF&amp;src=swe.cornell%40gmail.com&amp;color=%231B887A&amp;src=cornell.edu_vlh6sn1abd4e4b7p3hffqkanfc%40group.calendar.google.com&amp;color=%23875509&amp;ctz=America%2FNew_York" style=" border-width:0 " width="510" height="600" frameborder="0" scrolling="no"></iframe></br></br>-->

        To submit an event for inclusion on the calendar, please fill out the following form:</br>
        <a href="https://docs.google.com/a/cornell.edu/forms/d/1uddTaj8NVG4L5Ae0u-U0bSAPAIPm8UW9vSeEx8opE_c/viewform?usp=send_form">Calendar Event Submission</a>
        </p>
      </div>
    </div>
    <svg id="triangle" xmlns="http://www.w3.org/2000/svg" version="1.1" width="100%" height="100" viewBox="0 0 100 102" preserveAspectRatio="none">
        <path d="M0 0 L50 100 L100 0 Z"></path>
      </svg>
    <div class="wrapper highlight text-center">
    <div class="row">
      <div class="large-12 columns">
        <a class="button" href="join.asp">
          Join SWE
        </a>
      </div>
    </div>
    </div>
    <!--#include file="footer.inc"-->
    <script src="bower_components/jquery/jquery.js"></script>
    <script src="bower_components/foundation/js/foundation.js"></script>
    <script src="js/app.js"></script>
    <script>
      function LightenDarkenColor(col, amt) {
  
        var usePound = false;
      
        if (col[0] == "#") {
            col = col.slice(1);
            usePound = true;
        }
     
        var num = parseInt(col,16);
     
        var r = (num >> 16) + amt;
     
        if (r > 255) r = 255;
        else if  (r < 0) r = 0;
     
        var b = ((num >> 8) & 0x00FF) + amt;
     
        if (b > 255) b = 255;
        else if  (b < 0) b = 0;
     
        var g = (num & 0x0000FF) + amt;
     
        if (g > 255) g = 255;
        else if (g < 0) g = 0;
     
        return (usePound?"#":"") + (g | (b << 8) | (r << 16)).toString(16);
      }

      $(document).ready(function () {

        var $window = $(window);
        var $text = $('.hero-text');
        var $overlay = $('.hero-overlay');
        var originalColor = '#00a45d';
        var originalOpacity = parseFloat($text.css('opacity'));
     
        $window.scroll(function() {
          if ($window.scrollTop() < 480) {
            var factor = (1 - $window.scrollTop() / 480);

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
  </body>
</html>
