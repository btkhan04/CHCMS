class AddExtraFieldToUsers < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :extra_field, :string
  end
end
