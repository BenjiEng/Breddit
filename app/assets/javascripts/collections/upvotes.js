BredditApp.Collections.Upvotes = Backbone.Collection.extend({
  url:"api/posts",
  model: BredditApp.Models.Upvote
});

BredditApp.Collections.upvotes = new BredditApp.Collections.Upvotes();
