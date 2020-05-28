class CreateBikes < ActiveRecord::Migration[6.0]
  def change
    create_table :bikes do |t|
      t.string :name
      t.text :description
      t.decimal :price
      t.integer :rating
      t.string :image

      t.timestamps
    end
  end
end
