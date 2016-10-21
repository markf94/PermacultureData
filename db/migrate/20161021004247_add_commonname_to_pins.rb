class AddCommonnameToPins < ActiveRecord::Migration[5.0]
  def change
    add_column :pins, :commonname, :string
  end
end
