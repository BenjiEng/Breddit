BredditApp.Collections.Subscriptions = Backbone.Collection.extend({
  url:"/api/subscriptions"
});

BredditApp.Collections.subscriptions = new BredditApp.Collections.Subscriptions();
