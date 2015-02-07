BredditApp.Views.CommentsShow = Backbone.View.extend({
  template: JST["comments/show"],
  events:{
    "click button.destroy": "destroyComment",
    // "submit form": "endEditing"
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

  render: function(){
    var renderedContent = this.template({comment: this.model});
    this.$el.html(renderedContent);
    return this;
  }

});
