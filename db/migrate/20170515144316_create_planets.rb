class CreatePlanets < ActiveRecord::Migration[5.0]
  def change
    create_table :planets do |t|
      t.string :name
      t.integer :temperature
      t.string :distance
      t.string :environment
      t.string :population
      t.string :language
      t.integer :sociability
      t.integer :sexual_compatibility

      t.timestamps
    end
  end
end
