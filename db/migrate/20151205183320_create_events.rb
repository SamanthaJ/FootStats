class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :type
      t.string :player
      t.string :date
      t.string :location
      t.string :score

      t.timestamps null: false
    end
  end
end
