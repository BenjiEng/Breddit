BredditApp.Views.CommentForm = Backbone.View.extend({
  template: JST["comments/form"],
  tagName: "form",
  events:{
    "submit": "submit",
    "mousedown .new_com" :"clearTextArea",
    "keyup textarea": "renderPreview"
  },

  initialize: function(){
    this.listenTo(this.model, 'sync', this.render);
  },

  clearTextArea: function(event){
    console.log("yo");
    this.$('.new_com').empty();
  },

  render: function(){
    var renderedContent = this.template();
    this.$el.html(renderedContent);
    return this;
  },

  renderPreview: function (event) {
    var content = $(event.currentTarget).val();
    this.$(".preview").html(_.escape(content));
  },

  submit: function (event) {
    event.preventDefault();
    var attrs = $(event.currentTarget).serializeJSON();
    var that = this;
    this.model.set(attrs)
    this.model.save({}, {
      success: function () {
        that.collection.add(that.model);
        that.model = new BredditApp.Models.Comment({post_id: that.model.get('post_id')});
        // re-render to clear form/preview
        this.render();
      }
    });
  }
});
