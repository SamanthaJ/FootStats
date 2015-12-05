class AddColumnsToEvents < ActiveRecord::Migration
  def change
    add_column :events, :home_team, :integer
    add_column :events, :away_team, :integer
  end
end
