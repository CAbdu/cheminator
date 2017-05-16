class AddColumnToCorridors < ActiveRecord::Migration[5.0]
  def change
    add_column :corridors, :name, :string
  end
end
