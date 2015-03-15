BredditApp.Models.Subreddit = Backbone.Model.extend({
  urlRoot: '/api/subreddits',

  subscription: function(){
    if (!this._subscription) {
      this._subscription = new BredditApp.Models.Subscription({sub_id: this.id});
    }
    return this._subscription;
  },

  subscribe: function(){
    var that = this;
    this.subscription().save({sub_id: this.id}, {success: function(model, response, options){
      BredditApp.Collections.subscriptions.add(model, {merge: true});
      that._subscription = model;
    }});
  },

  unsubscribe: function(){
    var that = this;
    this.subscription().destroy({
      success: function(){
        delete that._subscription;
        BredditApp.Collections.subscriptions.remove(that);
      }
    });
  },

  parse: function(response){
    if (response.sub_id) {
      this.subscription().set({id: response.subscription_id});
      delete response.sub_id;
    }
    return response;
  },

});
