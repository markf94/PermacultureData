class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :pins, :commonname, :species
    rename_column :pins, :title, :commonname
  end
end
