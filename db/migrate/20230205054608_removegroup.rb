class Removegroup < ActiveRecord::Migration[6.0]
  def change
    drop_table :groups
  end
end
