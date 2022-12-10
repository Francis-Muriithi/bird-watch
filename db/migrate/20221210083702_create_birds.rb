class CreateBirds < ActiveRecord::Migration[7.0]
  def change
    create_table :birds do |t|
      t.string :name
      t.string :image_url
      t.string :description
      t.integer :likes
      t.belongs_to :adventure, null: false, foreign_key: true

      t.timestamps
    end
  end
end
