class AddLeagueTable < ActiveRecord::Migration
  def change
    create_table(:leagues) do |t|
      t.string   :name

      t.datetime :start_date, :null => false
      t.datetime :end_date,   :null => false

      t.timestamps
    end
  end
end
