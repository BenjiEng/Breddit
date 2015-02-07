BredditApp.Views.PostShow = Backbone.CompositeView.extend({
  template: JST['posts/show'],

  initialize: function () {
    this.listenTo(this.model, "sync", this.render);
    this.listenTo(this.model.comments(), "add", this.addComment);
    // this.listenTo(this.model.comments(), "remove", this.removeComment);
    var newComment = new BredditApp.Models.Comment({post_id: this.model.id})
    var commentNewView =
    new BredditApp.Views.CommentForm({ model: newComment, collection: this.model.comments() });
    this.addSubview(".comments-new", commentNewView);

    this.model.comments().each(this.addComment.bind(this));
   },

  addComment: function (comment) {
    var commentsShow =
    new BredditApp.Views.CommentsShow({model: comment});
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

  render: function () {
    var view = this;
    var renderedContent = this.template({ post: this.model });
    this.$el.html(renderedContent);
    this.attachSubviews();
    return this;
  }
});
