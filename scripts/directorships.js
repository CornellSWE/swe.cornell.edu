$("#career-dev").click(function () {
  $("#content-title").html("Career Development");
  $("#content").html("<p>The Career Development directorship aims to enhance skills in their career path by providing various opportunities, such as the Professional Networking Dinner, etiquette lunch, and industry panels. They also connect SWE to corporations and build strong relationships between the students and companies. </p > ");
});

$("#conference").click(function () {
  $("#content-title").html("Conference");
  $("#content").html("<p>The Conference Directorship is responsible for the planning, registration, and coordination of all logistics related to the SWE National Conference and any regional conferences that Cornell SWE may attend. This directorship has two directors who have typically been on SWE E-board for at least a year.</p>");
});

$("#communications").click(function () {
  $("#content-title").html("Communications");
  $("#content").html("<p>The Communications directorship seeks to broaden SWE’s reach and information students on upcoming SWE activities and opportunities.The Communications directorship also hosts various social events that allows SWE members to network with professors and alumni.We also create and distribute the annual SWE Magazine, which highlights SWE members and events, as well as Cornell professors.</p>")
});

$("#corporate-relations").click(function () {
  $("#content-title").html("Corporate Relations");
  $("#content").html("<p>The Corporate Relations directorship organizes all the information session hosted by SWE for the students in the College of Engineering. We seek to provide students with opportunities to meet company representatives in an informal setting and companies with the opportunity to present their merits. </p > ");

});

$("#finance").click(function () {
  $("#content-title").html("Finance");
  $("#content").html(" <p>The Finance directorship is in charge of all the financing within SWE. This includes all the money transactions from SWE events, ranging from information sessions, national and regional conferences, outreach/community service events, and many others. We strive to provide easy payments and billing, and work to ensure that your financial experience with the Society of Women Engineers is smooth and rewarding. </p> ");
})

$("#fundraising").click(function () {
  $("#content-title").html("Fundraising");
  $("#content").html("The Fundraising Directorship is responsible for raising money to send our members to the annual SWE National Conference and to help support our many other SWE events. We focus primarily on obtaining sponsorships from various companies by putting together a fundraising proposal to distribute to corporate contacts and other events, such as Krispy Kreme fundraising.")
});

$("#student-services").click(function () {
  $("#content-title").html("Student Services");
  $("#content").html("<p>SWE Student Services works to build a strong SWE community by hosting monthly general body meetings during which members network with one another. We also host socials such as movie outings and the Week of welcome. In addition, our internal mentorship program matches underclassmen to upperclassmen with similar interests and major course of study. </p>")
});

$("#outreach").click(function () {
  $("#content-title").html("Outreach");
  $("#content").html("");
  $("#content").append("<p>SWE Outreach strives to bring STEM education and awareness to individuals of all ages throughout Cornell and the greater Ithaca community by partnering with groups within the community, such as the Girl Scouts of NYPENN, Ithaca High School Code Red Robotics, and SWE NEXT clubs. We are always looking for more partnership opportunities! Additionally, we we also run Women in Engineering Day for accepted students every year. For general inquiries or any other questions, please email ");
  let tag = document.createElement("a");
  tag.href = "mailto:outreach.cornellswe@gmail.com"
  tag.innerHTML = "outreach.cornellswe@gmail.com"
  const p = $("#content p")
  p[0].append(tag)
})

