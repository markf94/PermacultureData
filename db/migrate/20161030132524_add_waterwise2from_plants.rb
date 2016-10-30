class AddWaterwise2fromPlants < ActiveRecord::Migration[5.0]
  def change
    add_column :plants, :waterwise, :boolean
  end
end
