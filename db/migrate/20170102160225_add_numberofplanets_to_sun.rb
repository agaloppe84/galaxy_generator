class AddNumberofplanetsToSun < ActiveRecord::Migration
  def change
    add_column :suns, :number_of_planets, :integer
  end
end
