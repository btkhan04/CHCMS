class AddResidentIdToMedical < ActiveRecord::Migration[5.1]
  def change
  	add_column :medicals, :resident_id, :integer
  end
end
