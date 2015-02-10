BredditApp.Views.SubredditShow = Backbone.View.extend({  //extend Composite View
  template: JST['subreddits/show'],

  events: {
    "click .upvote": "upvote",
    "click .downvote": "downvote"
  },

  initialize: function(){
    this.listenTo(this.model, 'sync', this.render)
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

  render: function(){
    var renderedContent = this.template({subreddit: this.model, posts: this.collection});
    this.$el.html(renderedContent);
    return this;
  }
});
