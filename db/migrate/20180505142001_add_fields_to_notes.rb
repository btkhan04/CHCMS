class AddFieldsToNotes < ActiveRecord::Migration[5.1]
  def change
  	add_column :notes, :resident_id, :integer
  	add_column :notes, :user_id, :integer
  	add_column :notes, :user_created_at, :datetime
  	add_column :notes, :medical_conditions, :string
  end
end
