class Game < ActiveRecord::Base
  belongs_to :local, :class_name => "Team", :foreign_key => "local_id"
  belongs_to :visitor, :class_name => "Team", :foreign_key => "visitor_id"

  def winner
    if local_score > visitor_score
      local_score
    else 
      visitor_score
    end
  end
end