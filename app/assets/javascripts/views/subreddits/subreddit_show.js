BredditApp.Views.SubredditShow = Backbone.View.extend({  //extend Composite View
  template: JST['subreddits/show'],
  events: {
    "click .upvote": "upvote",
    "click .downvote": "downvote",
    // "click .sub-option": "subscribe",
    // "click .unsub-option": "unsubscribe"
  },

  initialize: function(){
    this.listenTo(this.model, 'sync', this.render);
  },

  upvote: function(event){
    var id = $(event.currentTarget).data('id');
    var post = this.collection.get(id);
    var newUp = new BredditApp.Models.Upvote({post_id: id});

    var that = this;
    newUp.save({}, {
      success: function(){
        post.set('vote_count', post.get('vote_count') + 1);
        that.render();
      }
    });
  },

  downvote: function(event){
    var id = $(event.currentTarget).data('id');
    var post = this.collection.get(id);
    var newDown = new BredditApp.Models.Downvote({post_id: id});

    var that = this;
    newDown.save({},{
      success: function(){
        post.set('vote_count', post.get('vote_count') - 1);
        that.render();
      }
    });
  },

  // subscribe: function(event){
  //   var newSub = new BredditApp.Models.Subscription({sub_id: this.model.id});
  //   $target = $(event.currentTarget)
  //   newSub.save({},{
  //     success: function(){
  //       $target.html("Unsubscribe");
  //       $target.addClass("unsub-button").removeClass("sub-button");
  //     }
  //   });
  // },
  //
  // unsubscribe: function(event){
  //       var subscrip_id = this.model.get('subscription_id');
  //       var targetSubscription = new BredditApp.Models.Subscription({id: subscrip_id});
  //       targetSubscription.destroy({
  //         success: function(){
  //           $target.html("Subscribe");
  //           $target.addClass("sub-button").removeClass("unsub-button");
  //         }
  //       });
  // },

  render: function(){
    var renderedContent = this.template({subreddit: this.model, posts: this.collection});
    this.$el.html(renderedContent);
    return this;
  }

});
