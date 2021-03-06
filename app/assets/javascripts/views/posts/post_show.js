BredditApp.Views.PostShow = Backbone.CompositeView.extend({
  template: JST['posts/show'],
  events:{
    'click .del': "destroyPost",
    "click .upvote": "upvote",
    "click .upvoted": "deupvote",
    "click .downvote": "downvote",
    "click .downvoted": "dedownvote"
  },

  initialize: function (options) {
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model.comments(), "add", this.addComment);
    var newComment = new BredditApp.Models.Comment({post_id: this.model.id})
    var commentNewView =
    new BredditApp.Views.CommentForm({ model: newComment, collection: this.model.comments() });
    this.addSubview(".comments-new", commentNewView);

    this.model.comments().each(this.addComment.bind(this));
   },

  destroyPost: function (event) {
    event.preventDefault();
    this.model.destroy({
      success: function(){
        Backbone.history.navigate("", {trigger: true});
      }
    });
    this.remove();
  },

  addComment: function (comment) {
    var commentsShow =
    new BredditApp.Views.CommentsShow({collection: this.model.comments(), model: comment});
    this.addSubview(".comments-div", commentsShow);
  },

  removeComment: function (comment) {
    var subview = _.find(
      this.subviews(".comments"),
      function (subview) {
        return subview.model === comment;
      }
    );

    this.removeSubview(".comments", subview);
  },

  upvote: function(event){
    var id = $(event.currentTarget).data('id');
    var post = this.model
    var newUp = new BredditApp.Models.Upvote({post_id: id});

    var that = this;
    newUp.save({}, {
      success: function(){
        post.set('vote_count', post.get('vote_count') + 1);
        that.render();
        that.$(".upvote" + "[data-id='"+ id + "']").removeClass('upvote').addClass('upvoted');
      }
    });
  },

  deupvote: function(event){
    var id = $(event.currentTarget).data('id');
    var post = this.model
    var newUp = new BredditApp.Models.Upvote({post_id: id});

    var that = this;
    newUp.save({}, {
      success: function(){
        post.set('vote_count', post.get('vote_count') - 1);
        that.render();
        that.$(".upvoted" + "[data-id='"+ id + "']").removeClass('upvoted').addClass('upvote');
      }
    });
  },


  downvote: function(event){
    var id = $(event.currentTarget).data('id');
    var post = this.model
    var newDown = new BredditApp.Models.Downvote({post_id: id});

    var that = this;
    newDown.save({},{
      success: function(){
        post.set('vote_count', post.get('vote_count') - 1);
        that.render();
        that.$(".downvote" + "[data-id='"+ id + "']").removeClass('downvote').addClass('downvoted');
      }
    });
  },

  dedownvote: function(event){
    var id = $(event.currentTarget).data('id');
    var post = this.model
    var newUp = new BredditApp.Models.Upvote({post_id: id});

    var that = this;
    newUp.save({}, {
      success: function(){
        post.set('vote_count', post.get('vote_count') + 1);
        that.render();
        that.$("downvoted" + "[data-id='"+ id + "']").removeClass('downvoted').addClass('downvote');
      }
    });
  },

  render: function () {
    var view = this;
    var renderedContent = this.template({ post: this.model });
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  }
});
