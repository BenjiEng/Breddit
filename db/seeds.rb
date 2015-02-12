ActsAsVotable::Vote.create!([
  {votable_id: 51, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 50, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 52, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 54, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 55, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 30, votable_type: "Comment", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 48, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: false, vote_scope: nil, vote_weight: 1},
  {votable_id: 18, votable_type: "Comment", voter_id: 1, voter_type: "User", vote_flag: false, vote_scope: nil, vote_weight: 1},
  {votable_id: 19, votable_type: "Comment", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 19, votable_type: "Comment", voter_id: 3, voter_type: "User", vote_flag: false, vote_scope: nil, vote_weight: 1},
  {votable_id: 15, votable_type: "Comment", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1}
])
Comment.create!([
  {body: "New Comment Id", parent_comment_id: nil, post_id: 24, user_id: 3},
  {body: "New Comment #1", parent_comment_id: nil, post_id: 23, user_id: 3},
  {body: "Hello", parent_comment_id: nil, post_id: 26, user_id: 1},
  {body: "hey man", parent_comment_id: nil, post_id: 29, user_id: 1},
  {body: "new Comment", parent_comment_id: nil, post_id: 38, user_id: 1},
  {body: "Heyyyyyyy", parent_comment_id: nil, post_id: 39, user_id: 1},
  {body: "New commie", parent_comment_id: nil, post_id: 29, user_id: 1},
  {body: "cool cool cool", parent_comment_id: nil, post_id: 26, user_id: 1},
  {body: "It's pretty cool!", parent_comment_id: nil, post_id: 42, user_id: 1},
  {body: "hey thats cool", parent_comment_id: nil, post_id: 43, user_id: 1},
  {body: "bitchtits", parent_comment_id: nil, post_id: 26, user_id: 1},
  {body: "Sweet lols bro", parent_comment_id: nil, post_id: 48, user_id: 1},
  {body: "Really sweet lols", parent_comment_id: nil, post_id: 48, user_id: 1},
  {body: "Dat cat looks afraid", parent_comment_id: nil, post_id: 50, user_id: 1},
  {body: "MMMM.", parent_comment_id: nil, post_id: 57, user_id: 1},
  {body: "New Com", parent_comment_id: nil, post_id: 48, user_id: 1}
])
Post.create!([
  {title: "How I feel about superbowl commercials", url: "http://www.quickmeme.com/img/dd/dda8461c1ce0d0a9914a70186b8933113f23ab4479aeee6bb5b7b7ac98a27ec9.jpg", content: "LOLS", user_id: 1, sub_id: 58},
  {title: "Schemers", url: "http://i.imgur.com/NMkPaV4.jpg", content: "Little tricksters", user_id: 1, sub_id: 56},
  {title: "Some sweet buns", url: "http://img3.wikia.nocookie.net/__cb20120128045059/thehungergames/images/6/67/Bread.jpg", content: "Yum.", user_id: 1, sub_id: 59},
  {title: "Battlebots return!", url: "http://aggressivecomix.com/wp-content/uploads/2015/02/Classic-BattleBots.jpg", content: "Dr. Inferno Jr. is coming back in 2015!", user_id: 1, sub_id: 57},
  {title: "\"It's like a baguette\"", url: "http://img1.wikia.nocookie.net/__cb20121119115824/adventuretimewithfinnandjake/images/3/3b/Baguette.png", content: "-Bob Kelso", user_id: 1, sub_id: 58},
  {title: "(◕︵◕) Ouch!", url: "http://i.imgur.com/Oq4oG1b.jpg", content: ":(", user_id: 1, sub_id: 56},
  {title: "Going super", url: "http://i.imgur.com/KikzsbN.jpg", content: "saiyan", user_id: 1, sub_id: 56},
  {title: "Chicken Churck", url: "http://i.imgur.com/6H2VVCj.jpg", content: "Looks like....a chicken", user_id: 1, sub_id: 60},
  {title: "TIL that a man named Armand Hammer coincidentally ended up on the board of directors for Arm & Hammer", url: "http://upload.wikimedia.org/wikipedia/commons/f/fc/Armand_Hammer_82.jpg", content: "Coincidence?...or destiny", user_id: 1, sub_id: 61}
])
Subreddit.create!([
  {name: "hoedown", description: "A sub dedicated to the music of Aaron Copeland; especially his work in Rodeo."},
  {name: "epicmemers", description: "A sub dedicated to epic memes and trolliosis."},
  {name: "bread telepathy", description: "\"Telepathy\"\r\nNoun:\r\nThe supposed communication of thoughts or ideas by means other than the known senses.\r\n\"Bread\"\r\nNoun:\r\nFood made of flour, water, and yeast mixed together and baked. \"A loaf of bread.\"\r\nBread Telepathy.\r\n"},
  {name: "robowars", description: "Come join us in building the greatest robowarrior in the world. We are prepping up for the 2015 season. IRC #Gizmo."},
  {name: "aww", description: "The cutest things on the internet :3"},
  {name: "pareidolia", description: "When things look like faces."},
  {name: "todayilearned", description: "A sub dedicated to things you've learned today. It might just help someone else learn something too!"}
])
Subscription.create!([
  {sub_id: 58, user_id: 1},
  {sub_id: 58, user_id: 1},
  {sub_id: 58, user_id: 1},
  {sub_id: 58, user_id: 1}
])
User.create!([
  {username: "user", password_digest: "$2a$10$0Ep.9Q7pmthgNuIU4FcdVuihnWZBvWbokg9AqPEzZBw29niIrvFES", session_token: "D3f0aJGSyAdgLntfnFsaPA"},
  {username: "user2", password_digest: "$2a$10$JPvO6KjdzfKG/O07w.3icukl8Fx3yv27xIOp6jiat41t6Lb8LnbIe", session_token: "Zq9tWuSepZ_rD7PMrOT3xg"}
])
