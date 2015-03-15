BredditApp.Views.SubredditsIndexView = Backbone.View.extend({
  template: JST['subreddits/indexsingle'],

  events: {
    'click .sub-option': 'sub',
    'click .unsub-option': 'unsub',
  },

  initialize: function(){
    this.listenTo(this.model, 'add sync remove reset', this.render);
  },

  sub: function(event){
    event.preventDefault();
    var newSub = this.model.subscribe();
    this.$(".sub-option").removeClass('sub-option').addClass('unsub-option');
  },

  unsub: function(event){
    event.preventDefault();
    this.model.unsubscribe();
    this.$(".unsub-option").removeClass('unsub-option').addClass('sub-option');
  },


  render: function(){
    var renderedContent = this.template({subreddit: this.model});
    this.$el.html(renderedContent);
    return this;
  }

});
