BredditApp.Views.SubredditsIndex = Backbone.View.extend({
  template: JST['subreddits/index'],

  initialize: function(){
    this.listenTo(this.collection, 'add change:name remove reset', this.render)
  },

  render: function(){
    var renderedContent = this.template({subreddits: this.collection});
    this.$el.html(renderedContent);
    return this;
  }
});
