BredditApp.Views.SubredditShow = Backbone.View.extend({  //extend Composite View
  template: JST['subreddits/show'],

  initialize: function(){
    this.listenTo(this.model, 'sync', this.render)
  },

  render: function(){
    var renderedContent = this.template({subreddit: this.model});
    this.$el.html(renderedContent);
    return this;
  }
});
