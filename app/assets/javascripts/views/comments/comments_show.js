BredditApp.Views.CommentsShow = Backbone.View.extend({
  template: JST["comments/show"],
  template2: JST["comments/form"],

  events:{
    "click .destroy-comment": "destroyComment",
    // "submit form": "endEditing"
    "click .comment-reply": "renderCommentForm",
    "click .upvotecom": "upvote",
    "click .downvotecom": "dedownvote"
  },

  initialize: function(){
    this.listenTo(this.model, 'sync', this.render)
    this.listenTo(this.model, 'remove', this.render)
  },

  destroyComment: function(event){
    event.preventDefault();
    this.model.destroy();
    this.remove();
  },

  renderCommentForm: function(event){
    event.preventDefault();
    var childComment = new BredditApp.Models.Comment({parent_id: this.model.id})
    var commentForm = new BredditApp.Views.CommentForm({
      model: childComment,
      collection: this.collection})
    this.$('.comment-form-wrapper').html(commentForm.render().$el)

  },

  upvote: function(event){
    $.ajax({
      url: "/api/comments/" + this.model.id + "/like",
      dataType: "json",
      type: 'POST'
    });
    this.render();
    // var id = $(event.currentTarget).data('id');
    // var newUp = new BredditApp.Models.Upvote({comment_id: id});
    // newUp.save();
  },

  downvote: function(event){
    $.ajax({
      url: "/api/comments/" + this.model.id + "/dislike",
      dataType: "json",
      type: 'POST'
    });
    this.render();
    // var id = $(event.currentTarget).data('id');
    // var newDown = new BredditApp.Models.Downvote({comment_id: id});
    // newDown.save();
  },

  render: function(){
    var renderedContent = this.template({comment: this.model});
    this.$el.html(renderedContent);
    return this;
  }


});
