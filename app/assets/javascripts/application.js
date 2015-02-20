// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap 
//= require analytics
//= require underscore
//= require gmaps/google
//= require common

function getGeoLocation() {
  navigator.geolocation.getCurrentPosition(setGeoCookie);
  console.log('here');
}

function setGeoCookie(position) {
  var d = new Date();
  var n = d.getTime();
  var cookie_val = position.coords.latitude + "," + position.coords.longitude
                               
  var tz = jstz.determine();
  document.cookie = "timezone=" + tz.name();
  
  document.cookie = "lat_lng=" + escape(cookie_val);
  document.cookie = "dateTime=" + escape(n);
  
}
  $(document).ready(function() {
  
  if (document.cookie.indexOf("lat_lng") >= 0) {
    // console.log( "I have a cookie!");
  }
  else {
    // console.log("i don't have a cookie!")
    getGeoLocation();
  };
});

    
