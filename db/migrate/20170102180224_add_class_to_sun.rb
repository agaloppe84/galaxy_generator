class AddClassToSun < ActiveRecord::Migration
  def change
    add_column :suns, :solar_class, :string
  end
end
