BredditApp.Views.MessagesShow = Backbone.View.extend ({
  template: JST['messages/show'],

  render: function(){
    var renderedContent = this.template();
    this.$el.html(renderedContent);
    return this;
  }
});
