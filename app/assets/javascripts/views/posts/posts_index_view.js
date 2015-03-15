BredditApp.Views.PostsIndexView = Backbone.View.extend({
  template: JST['posts/indexsingle'],
  tagName: "li",
  events: {
    'click .upvote': 'upvote',
    'click .downvote': 'downvote',
  },

  initialize: function(){
    this.listenTo(this.model, 'add sync remove reset', this.render);
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
    var renderedContent = this.template({post: this.model});
    this.$el.html(renderedContent);
    return this;
  },

});


// downvote: function(event){
//   var id = $(event.currentTarget).data('id');
//   var post = this.collection.get(id);
//   var newDown = new BredditApp.Models.Downvote({post_id: id});
//
//   var that = this;
//   newDown.save({},{
//     success: function(){
//       post.set('vote_count', post.get('vote_count') - 1);
//       that.render();
//       that.$(".downvote" + "[data-id='"+ id + "']").removeClass('downvote').addClass('downvoted');
//       that.$(".upvoted" + "[data-id='"+ id + "']").removeClass('upvoted').addClass('upvote');
//     }
//   });
// },

// deupvote: function(event){
//   var id = $(event.currentTarget).data('id');
//   var post = this.collection.get(id);
//   var newUp = new BredditApp.Models.Upvote({post_id: id});
//
//   var that = this;
//   newUp.save({}, {
//     success: function(){
//       post.set('vote_count', post.get('vote_count') - 1);
//       that.render();
//       that.$(".upvoted" + "[data-id='"+ id + "']").removeClass('upvoted').addClass('upvote');
//       that.$(".downvoted" + "[data-id='"+ id + "']").removeClass('downvoted').addClass('downvote');
//     }
//   });
// },
//
//
// dedownvote: function(event){
//   var id = $(event.currentTarget).data('id');
//   var post = this.collection.get(id);
//   var newUp = new BredditApp.Models.Upvote({post_id: id});
//
//   var that = this;
//   newUp.save({}, {
//     success: function(){
//       post.set('vote_count', post.get('vote_count') + 1);
//       that.render();
//       that.$(".downvoted" + "[data-id='"+ id + "']").removeClass('downvoted').addClass('downvote');
//       that.$(".upvoted" + "[data-id='"+ id + "']").removeClass('upvoted').addClass('upvote');
//     }
//   });
// },
