class CreateCorridors < ActiveRecord::Migration[5.0]
  def change
    create_table :corridors do |t|
      t.string :address
      t.references :planet, foreign_key: true

      t.timestamps
    end
  end
end
