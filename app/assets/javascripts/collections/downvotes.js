BredditApp.Collections.Downvotes = Backbone.Collection.extend({
  url:"api/posts",
  model: BredditApp.Models.Downvote
});

BredditApp.Collections.downvotes = new BredditApp.Collections.Downvotes();
