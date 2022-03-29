class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :title
      t.text :description
      t.float :price
      t.string :location
      t.integer :number_of_bedrooms
      t.integer :number_of_bathrooms

      t.timestamps
    end
  end
end
