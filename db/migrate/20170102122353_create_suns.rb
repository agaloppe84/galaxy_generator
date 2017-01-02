class CreateSuns < ActiveRecord::Migration
  def change
    create_table :suns do |t|
      t.string :name
      t.float :solar_distance

      t.timestamps null: false
    end
  end
end
