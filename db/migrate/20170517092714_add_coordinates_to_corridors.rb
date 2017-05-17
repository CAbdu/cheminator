class AddCoordinatesToCorridors < ActiveRecord::Migration[5.0]
  def change
    add_column :corridors, :latitude, :float
    add_column :corridors, :longitude, :float
  end
end
