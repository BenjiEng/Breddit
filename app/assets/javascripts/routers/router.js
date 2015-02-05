BredditApp.Routers.Router = Backbone.Router.extend({

  initialize: function(options){ //what is options?
    this.$rootEl = options.$rootEl
  },

  routes: {
    "": "postsIndex",
    "posts/new": "newPost",
    "posts/:id": "showPost",
    "post/:id/edit": "editPost",


    "subreddits": "subredditsIndex",
    "subreddits/new": "newSubreddit",
    "subreddits/:id": "showSubreddit",
    "subreddits/:id/edit": "editSubreddit"
  },

//posts//

  postsIndex: function(){
    BredditApp.Collections.posts.fetch();
    var indexView = new BredditApp.Views.PostsIndex({collection: BredditApp.Collections.posts});
    this._swapView(indexView);
  },

  newPost: function(){
    var newPost = new BredditApp.Models.Post();
    var newView = new BredditApp.Views.PostForm({model: newPost, collection: BredditApp.Collections.posts});
    this._swapView(newView);
  },

  showPost: function(id){
    var post = BredditApp.Collections.posts.getOrFetch(id);
    var showView = new BredditApp.Views.PostShow({model: post});
    this._swapView(showView);
  },

  editSubreddit: function(id){
    var post = BredditApp.Collections.posts.getOrFetch(id);
    var editView = new BredditApp.Views.PostForm({model: post, collection: BredditApp.Collections.posts});
    this._swapView(editView);
  },

//subreddits//

  subredditsIndex: function(){
    BredditApp.Collections.subreddits.fetch();
    var indexView = new BredditApp.Views.SubredditsIndex({collection: BredditApp.Collections.subreddits});
    this._swapView(indexView);
  },

  newSubreddit: function(){
    var newSubreddit = new BredditApp.Models.Subreddit();
    var newView = new BredditApp.Views.SubredditForm({model: newSubreddit, collection: BredditApp.Collections.subreddits});
    this._swapView(newView);
  },

  showSubreddit: function(id){
    var subreddit = BredditApp.Collections.subreddits.getOrFetch(id);
    var showView = new BredditApp.Views.SubredditShow({model: subreddit});
    this._swapView(showView);
  },

  editSubreddit: function(id){
    var subreddit = BredditApp.Collections.subreddits.getOrFetch(id);
    var editView = new BredditApp.Views.SubredditForm({model: subreddit, collection: BredditApp.Collections.subreddits});
    this._swapView(editView);
  },

//other//

  _swapView: function(view){
    this.currentView && this.currentView.remove();
    this.currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
