class User < ApplicationRecord

  validates_uniqueness_of :username

  def self.generate
    adjectives = ['Ancient', 'Benevolent', 'Bubbling', 'Cunning', 'Dangerous', 'Exotic', 'Fluttering', 'Flying', 'Gilded', 'Misty', 'Mystical', 'Sparkling', 'Wise']
    nouns = ['Waterfall', 'River', 'Tiger', 'Panda', 'Tree', 'Owl', 'Fox', 'Glacier', 'Sprite', 'Butterfly', 'Mountain', 'Midnight', 'Cactus']
    number = rand.to_s[2..4]
    username ="#{adjectives.sample}-#{nouns.sample}-#{number}"
    create(username: username)
  end

end
