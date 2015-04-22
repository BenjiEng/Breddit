BredditApp.Views.PostsIndex = Backbone.CompositeView.extend({
  template: JST['posts/index'],

  initialize: function(){
    this.listenTo(this.collection, 'sync', this.render)
    this.listenTo(this.collection, 'add', this.addToList);
  },

  addToList: function(post){
    var view = new BredditApp.Views.PostsIndexItem({model: post});
    this.addSubview('.posts', view);
  },

  render: function(){
    var content = this.template();
    this.$el.html(content);
    this.attachSubviews();
    return this;
  }

});
