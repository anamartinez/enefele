class Team < ActiveRecord::Base
  has_many :local_games, :class_name => "Game", :foreign_key => "local_id"
  has_many :visitor_games, :class_name => "Game", :foreign_key => "visitor_id"
end