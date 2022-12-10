class CreateAdventures < ActiveRecord::Migration[7.0]
  def change
    create_table :adventures do |t|
      t.string :title
      t.string :image_url
      t.string :slug

      t.timestamps
    end
  end
end
