class CreateDishes < ActiveRecord::Migration[5.1]
  def change
    create_table :dishes do |t|
      t.text :name
      t.float :price
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
