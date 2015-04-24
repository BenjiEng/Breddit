BredditApp.Views.Navbar = Backbone.CompositeView.extend({
  template: JST["navbar"],

  render: function () {
    var content = this.template();
    this.$el.html(content);
    return this;
  }

});
