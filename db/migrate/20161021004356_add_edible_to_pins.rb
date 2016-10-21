class AddEdibleToPins < ActiveRecord::Migration[5.0]
  def change
    add_column :pins, :edible, :string
  end
end
