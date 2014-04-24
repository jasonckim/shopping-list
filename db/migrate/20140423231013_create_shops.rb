class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :title
      t.string :description
      t.integer :quantity

      t.timestamps
    end
  end
end
