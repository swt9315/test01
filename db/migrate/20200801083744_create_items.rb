class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :image
      t.integer :price
      t.text :explanation
      

      t.timestamps
    end
  end
end
