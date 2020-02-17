class CreateKitchens < ActiveRecord::Migration[6.0]
  def change
    create_table :kitchens do |t|
      t.string :city
      t.string :address
      t.integer :capacity
      t.references :user, null: false, foreign_key: true
      t.text :description
      t.string :name
      t.string :equipment
      t.integer :price_by_hour

      t.timestamps
    end
  end
end
