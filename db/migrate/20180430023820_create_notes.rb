class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :name
      t.text :description
      t.text :food_intake
      t.text :fluid_intake
      t.text :medicine

      t.timestamps
    end
  end
end
