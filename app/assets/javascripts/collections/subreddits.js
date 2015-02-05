BredditApp.Collections.Subreddits = Backbone.Collection.extend({
  url: '/api/subreddits',
  model: BredditApp.Models.Subreddit,

  getOrFetch: function(id) {
    var subreddit = this.get(id);
    var subreddits = this;
    if (!subreddit) {
      var subreddit = new BredditApp.Models.Subreddit({id: id});
      subreddit.fetch({
        success: function(){
          subreddits.add(subreddit);
        }
      });
    } else {
      subreddit.fetch();
    }
    return subreddit;
  }

});

BredditApp.Collections.subreddits = new BredditApp.Collections.Subreddits();
