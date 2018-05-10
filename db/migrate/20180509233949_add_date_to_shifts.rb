class AddDateToShifts < ActiveRecord::Migration[5.1]
  def change
  	add_column :shifts, :date, :date
  end
end
