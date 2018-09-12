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
//= require jquery
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .


document.addEventListener("DOMContentLoaded",function(){

course = document.getElementsByClassName("course");

for(var y = 0; y < course.length; y++){
  course[y].addEventListener("mouseenter", function(){


   this.style.backgroundColor = randomColor();


})
  course[y].addEventListener("mouseleave", function(){


    this.style.backgroundColor = '#eceaf2';
  })
}



function randomColor(){

  var a = Math.floor(Math.random() * 256);
  var b = Math.floor(Math.random() * 256);
  var c = Math.floor(Math.random() * 256);
   r = `rgb(${a},${b},${c})`;

   return r;
}

//  del = document.getElementById("cross");
//  edit = document.getElementById("edit-tag");

// del.addEventListener("click", function(){
//   edit.classList.add('remove');
// })
})



