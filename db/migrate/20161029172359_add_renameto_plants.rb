class AddRenametoPlants < ActiveRecord::Migration[5.0]
  def change
    rename_table :pins, :plants
  end
end
