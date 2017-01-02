class AddGalaxyReferencesToSun < ActiveRecord::Migration
  def change
    add_reference :suns, :galaxy, index: true, foreign_key: true
  end
end
