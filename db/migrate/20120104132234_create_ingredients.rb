class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :quantity
      t.string  :measure
      t.string  :notes
      t.timestamps
    end
  end
end
