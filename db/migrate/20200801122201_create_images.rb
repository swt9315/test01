class CreateImages < ActiveRecord::Migration[6.0]
  def change
    create_table :images do |t|
      t.string :images
      t.references :item_id,           null: false, foreingn_key: true

      t.timestamps
    end
  end
end
