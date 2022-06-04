class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.integer :comments_count
      t.string :image
      t.integer :likes_count
      t.integer :owner_id
      t.text :caption

      t.timestamps
    end
  end
end
