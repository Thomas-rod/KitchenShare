class AddCoordinatesToKitchens < ActiveRecord::Migration[6.0]
  def change
    add_column :kitchens, :latitude, :float
    add_column :kitchens, :longitude, :float
  end
end
