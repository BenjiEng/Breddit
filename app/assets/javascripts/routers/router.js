BredditApp.Routers.Router = Backbone.Router.extend({

  initialize: function(options){
    this.$rootEl = options.$rootEl
  },

  routes: {
    "": "postsIndex",
    "posts/new": "newPost",
    "posts/:id": "showPost",
    "post/:id/edit": "editPost",
    "post/:id/comments/new": "newComment",

    "subreddits": "subredditsIndex",
    "subreddits/new": "newSubreddit",
    "subreddits/:id": "showSubreddit",
    "subreddits/:id/edit": "editSubreddit",

    "messages": "messagesShow"
  },

//posts//

  postsIndex: function(){
    BredditApp.Collections.posts.fetch();
    var indexView = new BredditApp.Views.PostsIndex({
      collection: BredditApp.Collections.posts
      });
    this._swapView(indexView);
  },

  newPost: function(){
    BredditApp.Collections.subreddits.fetch({
      success: function(){
        var newPost = new BredditApp.Models.Post();
        var newView = new BredditApp.Views.PostForm({
          model: newPost,
          collection: BredditApp.Collections.posts,
          subs: BredditApp.Collections.subreddits
        });
        this._swapView(newView);
      }.bind(this)
    });
  },

  showPost: function(id){
    BredditApp.Collections.posts.fetch();
    var post = BredditApp.Collections.posts.getOrFetch(id);
    var showView = new BredditApp.Views.PostShow({model: post});
    this._swapView(showView);
  },

//comments//

  newComment: function(id){
    var newComment = new BredditApp.Models.Comment({post_id: id});
    var newCommentView = new BredditApp.Views.CommentForm({model: newComment, collection: BredditApp.Collections.comments});
  },

//subreddits//

  subredditsIndex: function(){
    BredditApp.Collections.subreddits.fetch();
    var indexView = new BredditApp.Views.SubredditsIndex({
      collection: BredditApp.Collections.subreddits,
      subscriptions: BredditApp.Collections.subscriptions});
    this._swapView(indexView);
  },

  showSubreddit: function(id){
    BredditApp.Collections.posts.fetch();
    var subreddit = BredditApp.Collections.subreddits.getOrFetch(id);
    var showView = new BredditApp.Views.SubredditShow({model: subreddit, collection: BredditApp.Collections.posts});
    this._swapView(showView);
  },

  // editSubreddit: function(id){
  //   var subreddit = BredditApp.Collections.subreddits.getOrFetch(id);
  //   var editView = new BredditApp.Views.SubredditForm({model: subreddit, collection: BredditApp.Collections.subreddits});
  //   this._swapView(editView);
  // },

//messages
  messagesShow: function(){
    var messagesShow = new BredditApp.Views.MessagesShow();
    this._swapView(messagesShow);
  },

//other//

  _swapView: function(view){
    this.currentView && this.currentView.remove();
    this.currentView = view;
    this.$rootEl.html(view.render().$el);
  }
});
