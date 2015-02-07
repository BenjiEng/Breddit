BredditApp.Models.Post = Backbone.Model.extend({
  urlRoot: '/api/posts',

  comments: function(){
    if (!this._comments){
      this._comments = new BredditApp.Collections.Comments();
    }
    return this._comments;
  },

  parse: function(response){
    this.comments().set(response.comments);
    delete(response.comments);
    return response;
  }

});
