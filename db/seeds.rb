User.create!([
  {username: "CptPicard", password_digest: "$2a$10$CAOjC1SUgmEIyoqGon/J.Ocm5p2r8Ml0WL9.JSZR324vu.19dR1JG", session_token: "xjAJrktYjGzbUjB37_bS7g"},
  {username: "user", password_digest: "$2a$10$sUW.sRpv4UXVAwDIQ9iIhuHKP4r4/HaDbXyVvZ.C5A57SPqWncrMy", session_token: "hQx0DdJ2yUd_3XzAJsQTuA"}
])

Subreddit.create!([
  {name: "epicmemers", description: "The very bottom of the internet. A place dedicated to FrankerZ, curing trolliosis, and the Memer King, Imaqtpie ヽ༼ຈل͜ຈ༽ﾉ. "},
  {name: "hoedown", description: "A subreddit dedicated to the music of Aaron Copland; especially his work from Rodeo and the timeless song, Hoedown, which starred in the 1991 commercial \"Beef it's what's for dinner\"."},
  {name: "aww", description: "The cutest things on the internet."},
  {name: "roboz", description: "Hi welcome to /roboz. We're dedicated to creating a network of robot users so that we can be in favor when the overlords take over. Check out our IRC channel for updates on what we're building for the 2015 RobotWars season."},
  {name: "breadtelepathy", description: "\"Telepathy\"\r\nNoun:\r\nThe supposed communication of thoughts or ideas by means other than the known senses.\r\n\"Bread\"\r\nNoun:\r\nFood made of flour, water, and yeast mixed together and baked. \"A loaf of bread.\"\r\nBread Telepathy.\r\n"}
])

Post.create!([
  {title: "How I feel watching the Superbowl Commercials", url: "http://www.quickmeme.com/img/dd/dda8461c1ce0d0a9914a70186b8933113f23ab4479aeee6bb5b7b7ac98a27ec9.jpg", content: "I'm a gravy guy.", user_id: 1, sub_id: 1},
  {title: "I found the \"Beef it's what's for dinner\" sheet music!", url: "http://s3.amazonaws.com/halleonard-pagepreviews/HL_DDS_0000000000873184.png", content: "A timeless classic.", user_id: 1, sub_id: 2},
  {title: ":p", url: "http://i.imgur.com/diRA4v2.jpg", content: ":>", user_id: 1, sub_id: 3},
  {title: "very Yoda like", url: "http://i.imgur.com/u1CJWdF.jpg", content: "There is no try.", user_id: 1, sub_id: 3},
  {title: "ouch! (●´ω｀●)", url: "http://i.imgur.com/Oq4oG1b.jpg", content: "Just a flesh wound.", user_id: 1, sub_id: 3},
  {title: "Classic battle between Dr. Destructoid Jr. and fahrenheit1337", url: "http://aggressivecomix.com/wp-content/uploads/2015/02/Classic-BattleBots.jpg", content: "Beep boop", user_id: 1, sub_id: 4},
  {title: "Did you guys remember to follow BreadZepplin on twitter?", url: "http://img3.wikia.nocookie.net/__cb20120128045059/thehungergames/images/6/67/Bread.jpg", content: "huehue", user_id: 1, sub_id: 5},
  {title: "Nice french bag", url: "http://img1.wikia.nocookie.net/__cb20121119115824/adventuretimewithfinnandjake/images/3/3b/Baguette.png", content: "with a satisfying crunch", user_id: 2, sub_id: 5},
  {title: "Mixed feelings", url: "https://japangasm.files.wordpress.com/2011/12/shokupanmimi-desktop.jpg", content: "Can you eat this?", user_id: 2, sub_id: 5}
])

Comment.create!([
  {body: "My sides.", parent_comment_id: nil, post_id: 1, user_id: 2},
  {body: "If I had a pumpernickel for every bread pun thread, I'd be rolling in dough.", parent_comment_id: nil, post_id: 7, user_id: 2}
])

ActsAsVotable::Vote.create!([
  {votable_id: 7, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 6, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 5, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 4, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 3, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 2, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 1, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 8, votable_type: "Post", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 9, votable_type: "Post", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 8, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 9, votable_type: "Post", voter_id: 1, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1}
])
