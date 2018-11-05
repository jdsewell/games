// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

// var humanPlayed = false;
// $('.tic').click(function() {
//   if (humanPlayed) {
// 		$(this).css('background-color', 'black');
// 	}
//   else {
//     $(this).css('background-color', 'blue');
//   }
//   humanPlayed = !humanPlayed
// });
function loadPosts(){
    $.getJSON("/posts.json", function(data){
      var html = "";
      $.each(data, function (index){
	       // alert(data[index].content);
	       html += "<b><i>" + data[index].content + "</i></b><br>";
	       });
	        // update our div
	         $("#posts").html(html);
	         });
         }
