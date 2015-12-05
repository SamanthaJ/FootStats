class RemovePlayerFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :player, :string
  end
end
