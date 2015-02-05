BredditApp.Routers.Router = Backbone.Router.extend({

  initialize: function(options){ //what is options?
    this.$rootEl = options.$rootEl
  },

  routes: {
    "": "index",
    "subreddits/new": "new",
    "subreddits/:id": "show",
    "subreddits/:id/edit": "edit"
  },

  index: function(){
    BredditApp.Collections.subreddits.fetch();
    var indexView = new BredditApp.Views.SubredditsIndex({collection: BredditApp.Collections.subreddits});
    this._swapView(indexView);
  },

  new: function(){
    var newSubreddit = new BredditApp.Models.Subreddit();
    var newView = new BredditApp.Views.SubredditForm({model: newSubreddit, collection: BredditApp.Collections.subreddits});
    this._swapView(newView);
  },

  show: function(id){
    var subreddit = BredditApp.Collections.subreddits.getOrFetch(id);
    var showView = new BredditApp.Views.SubredditShow({model: subreddit});
    this._swapView(showView);
  },

  edit: function(id){
    var subreddit = BredditApp.Collections.subreddits.getOrFetch(id);
    var editView = new BredditApp.Views.SubredditForm({model: subreddit, collection: BredditApp.Collections.subreddits});
    this._swapView(editView);
  },

  _swapView: function(view){
    this.currentView && this.currentView.remove();
    this.currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
