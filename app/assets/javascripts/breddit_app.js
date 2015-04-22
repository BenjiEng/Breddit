window.BredditApp = {
  Models: {},
  Collections: {},
  Views: {},
  Routers: {},
  initialize: function() {
    new BredditApp.Routers.Router({ $rootEl: $('#content') });
    // var view = new BredditApp.Views.Navbar();
    // $('#navbar').html(view.render().$el);
    Backbone.history.start();
  }
};

$(document).ready(function(){

});
