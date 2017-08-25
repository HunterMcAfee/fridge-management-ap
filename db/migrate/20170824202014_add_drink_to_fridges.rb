class AddDrinkToFridges < ActiveRecord::Migration[5.1]
  def change
    add_column :fridges, :drink, :boolean
  end
end
