BredditApp.Collections.Subscriptions = Backbone.Collection.extend({
  url:"/api/subscriptions",
  model: BredditApp.Models.Subscription
});

BredditApp.Collections.subscriptions = new BredditApp.Collections.Subscriptions();
