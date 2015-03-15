BredditApp.Views.PostsIndexView = Backbone.View.extend({
  template: JST['posts/indexsingle'],
  tagName: "li",
  events: {
    'click .upvote': 'upvote',
    'click .upvoted': 'deupvote',
    'click .downvote': 'downvote',
    'click .downvoted': 'dedownvote',
  },

  initialize: function(){
    this.listenTo(this.model, 'add sync remove reset', this.render);
  },

  // addUpvote: function(){
  //   var upvoteView = new BredditApp.Views.UpvoteShow();
  //   this.$()
  // },

  upvote: function(event){
    // var id = this.id
    // var post = this.collection.get(id);
    var newUp = new BredditApp.Models.Upvote({post_id: this.model.id});
    var that = this;
    newUp.save({}, {
      success: function(){
        // this.set('vote_count', post.get('vote_count') + 1);
        this.set('vote_count', that.get('vote_count') + 1);
        that.render();
        that.$(".upvote").removeClass('upvote').addClass('upvoted');
        // that.$(".downvoted" + "[data-id='"+ id + "']").removeClass('downvoted').addClass('downvote');
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
        that.$(".downvote" + "[data-id='"+ id + "']").removeClass('downvote').addClass('downvoted');
        that.$(".upvoted" + "[data-id='"+ id + "']").removeClass('upvoted').addClass('upvote');
      }
    });
  },

  deupvote: function(event){
    var id = $(event.currentTarget).data('id');
    var post = this.collection.get(id);
    var newUp = new BredditApp.Models.Upvote({post_id: id});

    var that = this;
    newUp.save({}, {
      success: function(){
        post.set('vote_count', post.get('vote_count') - 1);
        that.render();
        that.$(".upvoted" + "[data-id='"+ id + "']").removeClass('upvoted').addClass('upvote');
        that.$(".downvoted" + "[data-id='"+ id + "']").removeClass('downvoted').addClass('downvote');
      }
    });
  },


  dedownvote: function(event){
    var id = $(event.currentTarget).data('id');
    var post = this.collection.get(id);
    var newUp = new BredditApp.Models.Upvote({post_id: id});

    var that = this;
    newUp.save({}, {
      success: function(){
        post.set('vote_count', post.get('vote_count') + 1);
        that.render();
        that.$(".downvoted" + "[data-id='"+ id + "']").removeClass('downvoted').addClass('downvote');
        that.$(".upvoted" + "[data-id='"+ id + "']").removeClass('upvoted').addClass('upvote');
      }
    });
  },

  render: function(){
    var renderedContent = this.template({post: this.model});
    this.$el.html(renderedContent);
    return this;
  },

});
