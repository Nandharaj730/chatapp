class AddingActioncable < ActiveRecord::Migration[6.0]
  def change
    drop_table :messages , :groups

  end
end
