class AddImageToPlanets < ActiveRecord::Migration[5.0]
  def change
    add_column :planets, :image, :string
  end
end
