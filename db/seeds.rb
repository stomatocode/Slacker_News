User.create(username: 'Wingus', password: 'derp')
User.create(username: 'Dingus', password: 'herp')

Post.create(title: 'Why Ruby is better than Python:', body: 'It just is. Deal with it.')
Post.create(title: 'This just in:', body: 'Massive shortage of fucks, those being given have been restricted to none.')

Comment.create(content: 'Would you be referring to the whitespace dependency and how it\'s slower than ruby?', post_id: '1', user_id: '1')
