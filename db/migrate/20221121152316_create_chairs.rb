class CreateChairs < ActiveRecord::Migration[7.0]
  def change
    create_table :chairs do |t|
      t.string :name
      t.text :description
      t.text :address
      t.float :rating
      t.integer :price_per_day
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
