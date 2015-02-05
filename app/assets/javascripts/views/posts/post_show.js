BredditApp.Views.PostShow = Backbone.View.extend({  //extend Composite View
  template: JST['posts/show'],

  initialize: function(options){
    this.listenTo(this.model, 'sync', this.render)
    this.subreddits = options.subreddits
  },

  render: function(){
    var renderedContent = this.template({post: this.model, subreddits: this.subreddits});
    this.$el.html(renderedContent);
    return this;
  }
});
