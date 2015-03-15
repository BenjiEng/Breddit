BredditApp.Views.SubredditsIndex = Backbone.View.extend({
  template: JST['subreddits/index'],

  initialize: function(options){
    this.listenTo(this.collection, 'add sync change:name remove reset', this.render);
    this.listenTo(this.collection, 'add', this.addToList);
    this.subscriptions = options.subscriptions;
  },

  addToList: function(subreddit){
    var subView = new BredditApp.Views.SubredditsIndexView({model: subreddit});
    this.$('.subreddits').append(subView.$el);
  },

  render: function(){
    var renderedContent = this.template({subreddits: this.collection});
    this.$el.html(renderedContent);

    this.collection.each(function (subreddit) {
      var indexItem = new BredditApp.Views.SubredditsIndexView({model: subreddit});
      this.$('ul').append(indexItem.render().$el);
    }.bind(this));

    return this;
  }

});
