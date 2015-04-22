BredditApp.Views.PostsIndexItem = Backbone.View.extend({
  template: JST['posts/index-item'],
  tagName: "li",
  events: {
    'click .upvote': 'upvote',
    'click .downvote': 'downvote',
  },

  initialize: function(){
    // this.listenTo(this.model, 'add sync remove reset', this.render);
  },

  upvote: function(event){
    var newUp = new BredditApp.Models.Upvote({post_id: this.model.id});
    var that = this;
    newUp.save({}, {
      success: function(){
        that.model.set('vote_count', that.model.get('vote_count') + 1);
        that.render();
        that.$(".upvote").removeClass('upvote').addClass('upvoted');
        that.$(".downvoted").removeClass('downvoted').addClass('downvote');
      }
    });
  },

  downvote: function(event){
    var newDown = new BredditApp.Models.Downvote({post_id: this.model.id});
    var that = this;
    newDown.save({},{
      success: function(){
        that.model.set('vote_count', that.model.get('vote_count') - 1);
        that.render();
        that.$(".downvote").removeClass('downvote').addClass('downvoted');
        that.$(".upvoted").removeClass('upvoted').addClass('upvote');
      }
    });
  },

  render: function(){
    var content = this.template({post: this.model});
    this.$el.html(content);
    return this;
  },

});
