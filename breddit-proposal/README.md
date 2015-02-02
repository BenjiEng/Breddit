# Breddit

[Heroku link][heroku]

[heroku]: http://breddit.herokuapp.com

## Minimum Viable Product
Breddit is a clone of the beloved reddit. Lurkers (unlogged users) can:

- [x] View a feed of posts from different default subreddits (sorted: upvotes, new, etc.)
- [x] Click on posts and be redirected to the link url
- [x] View post comments
- [x] Navigate to different subreddits
- [x] Create accounts
- [x] Create sessions(log in)
 
Logged in users can:

- [x] Upvote posts and comments
- [x] Comment on posts (and parent comments) 
- [x] Create new posts that belongs to a subreddit
- [x] Create new subreddits
- [x] Subscribe to different subreddits

## Design Docs
* [View Wireframes][views]
* [DB schema][schema]

[views]: ./docs/views.md
[schema]: ./docs/schema.md

## Implementation Timeline

### Phase 1: User Authentication, Basic Subreddits and Posts (~1 day)
I will implement user authentication in Rails based on the practices learned at
App Academy. By the end of this phase, users will be create a new account, login,
and submit new posts.

[Details][phase-one]

### Phase 2: Subreddits (~1 day)
In rails create the subreddit model and controller as well as the root controller
and view. I will then add a Backbone subreddit model and collection. After, I will create
the Form (to create new subreddits), Show, and Index. By the end of this
phase, the existing Rails views will have been ported over to Backbone.

[Details][phase-two]

### Phase 3: Viewing and Creating Posts (~1 day)
I will first be creating a posts controller and post model in Rails. Then I will create 
the Backbone Post Model and Posts Collection. I will create the Backbone Views for
PostForm, PostIndex, and PostIndexItem.

[Details][phase-three]

### Phase 4: Post Feeds (~2 days)
Add a 'feed' to the Posts Controller in Rails. In Backbone create
a FeedPosts collection and a FeedShow View to display all the posts
in a feed for the user. This will be the main page for all users.

[Details][phase-four]

### Phase 5: Comments (~2 days)
In this phase I will implement the ability to create comments on posts and
other comments. I will create a Comments Model and Controller in Rails. Then
I will create a Comments Model and CommentForm View in Backbone.

[Details][phase-five]

### Bonus Features (TBD)


[phase-one]: ./docs/phases/phase1.md
[phase-two]: ./docs/phases/phase2.md
[phase-three]: ./docs/phases/phase3.md
[phase-four]: ./docs/phases/phase4.md
[phase-five]: ./docs/phases/phase5.md

