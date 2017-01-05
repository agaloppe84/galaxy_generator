class AddSolarMassToPlanet < ActiveRecord::Migration
  def change
    add_column :planets, :solar_mass, :float
    add_column :planets, :solar_radius, :float
    add_column :planets, :solar_distance, :float
    add_column :planets, :orbital_period, :float
    add_column :planets, :orbital_speed, :float
    add_column :planets, :gravity, :float
    add_column :planets, :temperature, :float
    add_column :planets, :rotation_period, :float
    add_column :planets, :planet_type, :string
    add_column :planets, :atmosphere, :boolean
    add_column :planets, :water, :boolean
    add_column :planets, :liquid_water, :boolean
    add_column :planets, :life, :boolean
    add_column :planets, :planet_color, :string
    add_column :planets, :moon_number, :integer
    add_column :planets, :mass, :float
  end
end
