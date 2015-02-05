BredditApp.Views.PostsIndex = Backbone.View.extend({
  template: JST['posts/index'],

  initialize: function(){
    this.listenTo(this.collection, 'add change:name remove reset', this.render)
  },

  render: function(){
    var renderedContent = this.template({posts: this.collection});
    this.$el.html(renderedContent);
    return this;
  }
});
