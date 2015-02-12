BredditApp.Views.PostShow = Backbone.CompositeView.extend({
  template: JST['posts/show'],
  events:{
    'click .del': "destroyPost",
    "click .upvote": "upvote",
    "click .downvote": "downvote"
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
    var newUp = new BredditApp.Models.Upvote({post_id: id});
    newUp.save();
  },

  downvote: function(event){
    var id = $(event.currentTarget).data('id');
    var newDown = new BredditApp.Models.Downvote({post_id: id});
    newDown.save();
  },

  render: function () {
    var view = this;
    var renderedContent = this.template({ post: this.model });
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  }
});
