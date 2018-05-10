class AddDobToResident < ActiveRecord::Migration[5.1]
  def change
    add_column :residents, :dob, :date
  end
end
