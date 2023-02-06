class Convert < ActiveRecord::Migration[6.0]
  def change
    change_column :messages, :from, :string
  end
end
