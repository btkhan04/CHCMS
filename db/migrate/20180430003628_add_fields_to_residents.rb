class AddFieldsToResidents < ActiveRecord::Migration[5.1]
  def change
    add_column :residents, :date_of_birth, :datetime
    add_column :residents, :sex, :string
    add_column :residents, :mobile, :string 
    add_column :residents, :address, :string
    add_column :residents, :postcode, :string
    add_column :residents, :next_of_kin, :string
    add_column :residents, :medical_conditions, :string
  end
end
