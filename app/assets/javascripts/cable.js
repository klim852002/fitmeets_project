// Action Cable provides the framework to deal with WebSockets in Rails.
// You can generate new channels where WebSocket features live using the rails generate channel command.
//
//= require action_cable
//= require_self
//= require_tree ./channels

(function() {
  this.App || (this.App = {});

  App.cable = ActionCable.createConsumer();

}).call(this);

$(document).ready(function(){
     $(".search-wrapper input").mouseenter(function(){
         $(".search-wrapper button").css("background-color", "#4aba10");


     });
   $(".search-wrapper input").mouseout(function(){
         $(".search-wrapper button").css("background-color", "" );
      });
});
