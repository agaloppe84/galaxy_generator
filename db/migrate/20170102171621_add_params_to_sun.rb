class AddParamsToSun < ActiveRecord::Migration
  def change
    add_column :suns, :mass, :float
    add_column :suns, :radius, :float
    add_column :suns, :solar_type, :string
    add_column :suns, :chromaticity, :string
    add_column :suns, :solar_color, :string
    add_column :suns, :ecliptic_distance, :float
  end
end
