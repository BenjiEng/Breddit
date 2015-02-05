BredditApp.Collections.Posts = Backbone.Collection.extend({
  url: '/api/posts',
  model: BredditApp.Models.Post,

  getOrFetch: function(id){
    var post = this.get(id);
    var posts = this;
    if(!post) {
      var post = new BredditApp.Models.Post({id: id});
      post.fetch({
        success: function(){
          posts.add(post);
        }
      });
    } else {
      post.fetch();
    }
    return post;
  }

});

BredditApp.Collections.posts = new BredditApp.Collections.Posts();
