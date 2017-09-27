class AddTypeToGalaxy < ActiveRecord::Migration
  def change
    add_column :galaxies, :galaxy_type, :string
  end
end
