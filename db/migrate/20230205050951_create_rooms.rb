class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :room_id
      t.string :concept
      t.string :room_name
      t.timestamps
    end
  end
end
