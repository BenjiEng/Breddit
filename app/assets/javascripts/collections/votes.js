BredditApp.Collections.Votes = Backbone.Collection.extend({
  url:"/api/votes",
  model: BredditApp.Models.Vote
});

BredditApp.Collections.votes = new BredditApp.Collections.Votes();
