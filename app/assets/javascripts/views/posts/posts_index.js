BredditApp.Views.PostsIndex = Backbone.CompositeView.extend({
  template: JST['posts/index'],

  initialize: function(options){
    this.listenTo(this.collection, 'add change:name remove reset', this.render)
  },

  render: function(){
    var renderedContent = this.template({posts: this.collection});
    this.$el.html(renderedContent);
    return this;
  }
});
