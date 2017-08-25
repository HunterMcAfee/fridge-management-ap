class CreateDrinks < ActiveRecord::Migration[5.1]
  def change
    create_table :drinks do |t|
      t.string :name
      t.float :size
      t.boolean :alcoholic

      t.timestamps
    end
  end
end
