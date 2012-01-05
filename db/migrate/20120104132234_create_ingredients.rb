class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :recipy_id
      t.string :name
      t.integer :quantity
      t.string  :measure
      t.string  :notes
      t.timestamps
    end
  end
end
