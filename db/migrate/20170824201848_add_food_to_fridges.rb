class AddFoodToFridges < ActiveRecord::Migration[5.1]
  def change
    add_column :fridges, :food, :boolean
  end
end
