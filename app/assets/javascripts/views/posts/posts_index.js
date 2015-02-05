BredditApp.Views.PostsIndex = Backbone.View.extend({
  template: JST['posts/index'],

  initialize: function(options){
    BredditApp.Collections.subreddits.fetch();
    this.listenTo(this.collection, 'add change:name remove reset', this.render)
    this.subs = options.subreddits;
    this.listenTo(this.subs, 'sync', this.render);
  },

  render: function(){
    var renderedContent = this.template({posts: this.collection, subreddits: this.subs});
    this.$el.html(renderedContent);
    return this;
  }
});
