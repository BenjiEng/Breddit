BredditApp.Views.SubredditIndexView = Backbone.View.extend({
  template: JST['subreddits/indexsingle'],
  tagName: "li",
  events: {
    'click .sub-option': 'sub',
    'click .unsub-option': 'unsub',
  },

  initialize: function(){
    this.listenTo(this.model, 'add sync remove reset', this.render);
  },

  sub: function(event){ //need to create a subscription
    event.preventDefault();
    this.model.subscribe();
    this.render();
  },

  unsub: function(event){
    event.preventDefault();
    this.model.unsubscribe();
    this.render();
  },

  render: function(){
    var renderedContent = this.template({subreddit: this.model});
    this.$el.html(renderedContent);
    return this;
  }

});
