class CreateThings < ActiveRecord::Migration
  def change
    create_table :things do |t|
      t.string :name
      t.references :user
      t.string :image_url
      t.text :description

      t.timestamps
    end
    add_index :things, :user_id
  end
end
