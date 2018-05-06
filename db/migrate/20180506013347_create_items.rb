class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :title
      t.integer :inventory
      t.decimal :price, precision: 8, scale: 2
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
