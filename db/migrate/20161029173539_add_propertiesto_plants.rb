class AddPropertiestoPlants < ActiveRecord::Migration[5.0]
  def change
    add_column :plants, :zuluname, :string
    add_column :plants, :treenumber, :integer
    add_column :plants, :size, :string
    add_column :plants, :category, :string
    add_column :plants, :origin, :string
    add_column :plants, :links, :text

    add_column :plants, :nitrogen_fixer, :boolean
    add_column :plants, :deciduous, :boolean
    add_column :plants, :semi_deciduous, :boolean
    add_column :plants, :chop_and_drop, :boolean
    add_column :plants, :evergreen, :boolean
    add_column :plants, :windbreak, :boolean
    add_column :plants, :fire_retardent, :boolean
    add_column :plants, :shade, :boolean
    add_column :plants, :security, :boolean
    add_column :plants, :hedge, :boolean
    add_column :plants, :edible, :boolean
    add_column :plants, :medicinal, :boolean
    add_column :plants, :useful, :boolean
    add_column :plants, :timber_furniture, :boolean
    add_column :plants, :timber_building, :boolean
    add_column :plants, :fire_wood, :boolean
    add_column :plants, :fodder, :boolean
    add_column :plants, :drought_tolerant, :boolean
    add_column :plants, :salt_tolerant, :boolean
    add_column :plants, :frost_tolerant, :boolean
    add_column :plants, :waterlogging, :boolean
    add_column :plants, :wind_resistant, :boolean
    add_column :plants, :bird_attracting, :boolean
    add_column :plants, :butterfly_host, :boolean
    add_column :plants, :beneficial_insects, :boolean
    add_column :plants, :apiculture, :boolean
    add_column :plants, :bat_attractor, :boolean
    add_column :plants, :attractive_flowers, :boolean
    add_column :plants, :attractive_fruit, :boolean
    add_column :plants, :attractive_foliage, :boolean

  end
end
