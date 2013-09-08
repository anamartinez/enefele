class AddLocalAndVisitorColumnToGames < ActiveRecord::Migration
  def change
    add_column :games, :local_id, :integer
    add_column :games, :visitor_id, :integer    
  end
end
