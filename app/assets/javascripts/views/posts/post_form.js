BredditApp.Views.PostForm = Backbone.View.extend({
  tagName: 'form',
  template: JST['posts/form'],
  events: {
    'click button': 'submit'
  },

  initialize: function(options){
    this.subs =  options.subreddits;
  },

  submit: function(event){
    event.preventDefault();
    var attrs = this.$el.serializeJSON();
    var that = this;
    this.model.set(attrs);
    this.model.save({}, {
      success: function(){
        that.collection.add(that.model, {merge: true});
        Backbone.history.navigate("", {trigger: true});
      }
    });
  },

  render: function(){
    var renderedContent = this.template({post: this.model, subreddits: this.subs});
    this.$el.html(renderedContent);
    return this;
  }
});
