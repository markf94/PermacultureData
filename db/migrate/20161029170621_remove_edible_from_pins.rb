class RemoveEdibleFromPins < ActiveRecord::Migration[5.0]
  def change
    remove_column :pins, :edible, :string
  end
end
