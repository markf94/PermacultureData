class RemoveTestfromPlants < ActiveRecord::Migration[5.0]
  def change
    remove_column :plants, :test, :integer
  end
end
