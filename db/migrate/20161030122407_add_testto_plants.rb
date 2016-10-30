class AddTesttoPlants < ActiveRecord::Migration[5.0]
  def change
    add_column :plants, :test, :integer
  end
end
