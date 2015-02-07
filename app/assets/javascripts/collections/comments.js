BredditApp.Collections.Comments = Backbone.Collection.extend({
  url: "/api/comments",
  model: BredditApp.Models.Comment,

});

BredditApp.Collections.comments = new BredditApp.Collections.Comments();
