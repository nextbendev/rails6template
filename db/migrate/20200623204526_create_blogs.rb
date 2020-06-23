class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.string :photo

      t.timestamps
    end
  end
end
