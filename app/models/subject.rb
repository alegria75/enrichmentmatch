class Subject < ActiveRecord::Base
  attr_accessible :subject
  # :music_and_movement, :soccer, :martial_arts, :Spanish, :Sign_language, :creative_movement, :yoga
  has_many :users
end
