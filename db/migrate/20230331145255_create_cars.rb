class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :name
      t.text :description
      t.string :image
      t.string :classification
      t.string :model
      t.string :year
      t.integer :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
