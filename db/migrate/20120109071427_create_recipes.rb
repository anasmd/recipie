class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.integer :user_id
      t.string :title
      t.text :directions
      t.string :preperation_time
      t.string :cooking_time
      t.decimal :serving_size
      t.text :story
      t.string :course
      t.integer :cusisine_id      
      t.string :occasion
      t.boolean :favourate, :default => false
      t.timestamps
    end
  end
end
