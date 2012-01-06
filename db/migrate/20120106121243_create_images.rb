class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :file
      t.string :attachable_type
      t.integer :attachable_id

      t.timestamps
    end
    add_index :images, :attachable_type
    add_index :images, :attachable_id
  end
end
