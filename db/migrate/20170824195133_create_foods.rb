class CreateFoods < ActiveRecord::Migration[5.1]
  def change
    create_table :foods do |t|
      t.string :name
      t.float :weight
      t.boolean :vegan
      t.timestamp :t

      t.timestamps
    end
  end
end
