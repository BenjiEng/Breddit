BredditApp.Models.Subreddit = Backbone.Model.extend({
  urlRoot: '/api/subreddits',

  parse: function(response){
    // if (response.subscription_id) {
      // this.subscriptions().set({id: response.subscription_id});
      // delete response.subscription_id;
    // }
    return response;
  },

  subscriptions: function(){
    if (!this._subscriptions) {
      this._subscriptions = new BredditApp.Models.Subscription();
    }
    return this._subscriptions
  }

});
