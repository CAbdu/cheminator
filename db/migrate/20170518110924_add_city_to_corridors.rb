class AddCityToCorridors < ActiveRecord::Migration[5.0]
  def change
    add_column :corridors, :city, :string
  end
end
