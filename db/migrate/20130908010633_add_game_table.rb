class AddGameTable < ActiveRecord::Migration
  def change
    create_table(:games) do |t|
      t.integer   :local_score,     :null => false
      t.integer   :visitor_score,   :null => false
      t.datetime  :date,            :null => false

      t.timestamps
    end
  end
end
