class CreateMoons < ActiveRecord::Migration
  def change
    create_table :moons do |t|
      t.float :radius
      t.float :mass
      t.float :orbital_period
      t.float :distance_from_planet
      t.float :temperature
      t.float :rotation
      t.boolean :atmosphere
      t.string :name

      t.timestamps null: false
    end
  end
end
