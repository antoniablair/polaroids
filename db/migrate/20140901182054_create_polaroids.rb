class CreatePolaroids < ActiveRecord::Migration
  def change
    create_table :polaroids do |t|
      t.string :name
      t.string :artist
      t.text :description
      t.integer :price
      t.string :picture

      t.timestamps
    end
  end
end
