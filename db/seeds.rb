User.create!([
  {username: "CptPicard", password_digest: "$2a$10$CAOjC1SUgmEIyoqGon/J.Ocm5p2r8Ml0WL9.JSZR324vu.19dR1JG", session_token: "xjAJrktYjGzbUjB37_bS7g"},
  {username: "guest", password_digest: "$2a$10$5WvqUjFtyGdR2C6F2Vvxsup0m444fyFq44gjRdwTA3IXF9n8mmBqW", session_token: "g-a_Dq2CS4yPNrGJZ1Ppjg"},
  {username: "user", password_digest: "$2a$10$sUW.sRpv4UXVAwDIQ9iIhuHKP4r4/HaDbXyVvZ.C5A57SPqWncrMy", session_token: "f7ZCAK6AU_7gHzIvMcunyQ"},
  {username: "MRoboto", password_digest: "$2a$10$W5lOd37P59C4yl0ezhVKA.Vutnd3i6.OGmUMAbgHea5Z3JIzpeMPO", session_token: "EzyLEDNPvid11NsXeP-YjA"},
  {username: "breadman", password_digest: "$2a$10$86bThO8qOdgWD16/sji.wOeOzWngs3uAZemWa9C0JksFAjzg8740K", session_token: "TjdBmGmGcqAQTcvBGeL4_w"}
])

Subreddit.create!([
  {name: "epicmemers", description: "The very bottom of the internet. A place dedicated to FrankerZ, curing trolliosis, and the Memer King, Imaqtpie ヽ༼ຈل͜ຈ༽ﾉ. "},
  {name: "hoedown", description: "A subreddit dedicated to the music of Aaron Copland; especially his work from Rodeo and the timeless song, Hoedown, which starred in the 1991 commercial \"Beef it's what's for dinner\"."},
  {name: "aww", description: "The cutest things on the internet."},
  {name: "roboz", description: "Hi welcome to /roboz. We're dedicated to creating a network of robot users so that we can be in favor when the overlords take over. Check out our IRC channel for updates on what we're building for the 2015 RobotWars season."},
  {name: "breadtelepathy", description: "\"Telepathy\"\r\nNoun:\r\nThe supposed communication of thoughts or ideas by means other than the known senses.\r\n\"Bread\"\r\nNoun:\r\nFood made of flour, water, and yeast mixed together and baked. \"A loaf of bread.\"\r\nBread Telepathy.\r\n"},
  {name: "funny", description: "You may only post if you are funny."},
  {name: "appacademy", description: "For all the students at app academy."}
])

Post.create!([
  {title: "How I feel watching the Superbowl Commercials", url: "http://www.quickmeme.com/img/dd/dda8461c1ce0d0a9914a70186b8933113f23ab4479aeee6bb5b7b7ac98a27ec9.jpg", content: "I'm a gravy guy.", user_id: 1, sub_id: 1},
  {title: "I found the \"Beef it's what's for dinner\" sheet music!", url: "http://s3.amazonaws.com/halleonard-pagepreviews/HL_DDS_0000000000873184.png", content: "A timeless classic.", user_id: 1, sub_id: 2},
  {title: "Nostalgia", url: "http://i.giphy.com/iLqpYAbKGOrqU.gif", content: "Calvin and Hobbes", user_id: 3, sub_id: 1},
  {title: "pat pat", url: "http://i.imgur.com/W6IZ9jN.gif", content: "pat pat", user_id: 4, sub_id: 3}
  {title: ":p", url: "http://i.imgur.com/diRA4v2.jpg", content: ":>", user_id: 1, sub_id: 3},
  {title: "very Yoda like", url: "http://i.imgur.com/u1CJWdF.jpg", content: "There is no try.", user_id: 1, sub_id: 3},
  {title: "ouch! (●´ω｀●)", url: "http://i.imgur.com/Oq4oG1b.jpg", content: "Just a flesh wound.", user_id: 1, sub_id: 3},
  {title: "Classic battle between Dr. Destructoid Jr. and fahrenheit1337", url: "http://aggressivecomix.com/wp-content/uploads/2015/02/Classic-BattleBots.jpg", content: "Beep boop", user_id: 1, sub_id: 4},
  {title: "Did you guys remember to follow BreadZepplin on twitter?", url: "http://img3.wikia.nocookie.net/__cb20120128045059/thehungergames/images/6/67/Bread.jpg", content: "huehue", user_id: 1, sub_id: 5},
  {title: "Nice french bag", url: "http://img1.wikia.nocookie.net/__cb20121119115824/adventuretimewithfinnandjake/images/3/3b/Baguette.png", content: "with a satisfying crunch", user_id: 2, sub_id: 5},
  {title: "Mixed feelings", url: "https://japangasm.files.wordpress.com/2011/12/shokupanmimi-desktop.jpg", content: "Can you eat this?", user_id: 2, sub_id: 5},
  {title: "A car hit the office building I work in yesterday. Came to work to and found this gem.", url: "http://i.imgur.com/vmLOe9l.jpg", content: "Oh yeah", user_id: 2, sub_id: 6},
  {title: "If she laughs she's into you", url: "http://i.imgur.com/PAh5RN9.png", content: "From scrubs", user_id: 2, sub_id: 6},
  {title: "I see bread people", url: "http://static.tumblr.com/ejxzdnd/fJolbcnrk/bp_header_4.png", content: "-Bruce Willy", user_id: 2, sub_id: 5},
  {title: "Legitimate SAT questions", url: "http://i.imgur.com/kFGxxfW.jpg", content: "The answer is Jimmy Fallon.", user_id: 3, sub_id: 6},
  {title: "made me aww to say the yeast", url: "http://imgs.tuts.dragoart.com/how-to-draw-bread_1_000000009558_5.jpg", content: ":D", user_id: 3, sub_id: 5},
  {title: "TIL: There is an anime about baking bread called Yakitate Japan!", url: "http://img1.ak.crunchyroll.com/i/spire3/05212008/4/8/c/d/48cd8e6a6a1280_full.jpg", content: "He has solar hands.", user_id: 3, sub_id: 5},
  {title: "Yes indeed...", url: "http://www.fandompost.com/wp-content/uploads/2014/04/OrderRabbit2b.jpg", content: "D:", user_id: 3, sub_id: 5},
  {title: "Sometimes I feel a bit embarrassed when people ask me to read the minds of different loaves", url: "https://readingisdelicious.files.wordpress.com/2012/07/fairybreadjinrui.jpg", content: "Really tho.", user_id: 3, sub_id: 5},
  {title: "Hit the jackpot boys!", url: "http://i.imgur.com/BNvTf.jpg?1", content: "Dolla dolla", user_id: 3, sub_id: 1},
])

Comment.create!([
  {body: "My sides.", parent_comment_id: nil, post_id: 1, user_id: 2},
  {body: "If I had a pumpernickel for every bread pun thread, I'd be rolling in dough.", parent_comment_id: nil, post_id: 7, user_id: 2},
  {body: "HAJAJA", parent_comment_id: nil, post_id: 1, user_id: 3},
  {body: "This is an amazing find Mr. Picard.", parent_comment_id: nil, post_id: 2, user_id: 2},
  {body: "much lols have been had.", parent_comment_id: nil, post_id: 13, user_id: 3},
  {body: "It's like Luke Skywalker training in Dagobah!", parent_comment_id: nil, post_id: 4, user_id: 3},
  {body: "I miss them @_@", parent_comment_id: nil, post_id: 19, user_id: 2},
  {body: "Ching ching bling bling", parent_comment_id: nil, post_id: 18, user_id: 2},
  {body: "If I remember correctly Dr. Destructoid Jr. took the match 3-1.", parent_comment_id: nil, post_id: 6, user_id: 4},
  {body: "So kawaii :D", parent_comment_id: nil, post_id: 20, user_id: 4}
])

Subscription.create!([
  {sub_id: 1, user_id: 3},
  {sub_id: 2, user_id: 3},
  {sub_id: 3, user_id: 3},
  {sub_id: 4, user_id: 3},
  {sub_id: 5, user_id: 3},
  {sub_id: 6, user_id: 3},
  {sub_id: 7, user_id: 3},
  {sub_id: 1, user_id: 2},
  {sub_id: 2, user_id: 2},
  {sub_id: 4, user_id: 2},
  {sub_id: 5, user_id: 2},
  {sub_id: 3, user_id: 2},
  {sub_id: 6, user_id: 2},
  {sub_id: 7, user_id: 2},
  {sub_id: 1, user_id: 4},
  {sub_id: 2, user_id: 4},
  {sub_id: 3, user_id: 4},
  {sub_id: 4, user_id: 4},
  {sub_id: 5, user_id: 4},
  {sub_id: 1, user_id: 5},
  {sub_id: 2, user_id: 5},
  {sub_id: 3, user_id: 5},
  {sub_id: 4, user_id: 5},
  {sub_id: 5, user_id: 5}
])

ActsAsVotable::Vote.create!([
  {votable_id: 1, votable_type: "Post", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 18, votable_type: "Post", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 19, votable_type: "Post", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 2, votable_type: "Post", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 3, votable_type: "Post", voter_id: 2, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 6, votable_type: "Post", voter_id: 4, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 20, votable_type: "Post", voter_id: 4, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 1, votable_type: "Post", voter_id: 5, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 18, votable_type: "Post", voter_id: 5, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 19, votable_type: "Post", voter_id: 5, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 2, votable_type: "Post", voter_id: 5, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 3, votable_type: "Post", voter_id: 5, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 4, votable_type: "Post", voter_id: 5, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 5, votable_type: "Post", voter_id: 5, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 9, votable_type: "Post", voter_id: 5, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1},
  {votable_id: 8, votable_type: "Post", voter_id: 5, voter_type: "User", vote_flag: true, vote_scope: nil, vote_weight: 1}
])
