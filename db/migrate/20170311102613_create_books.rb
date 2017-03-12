class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.text :title
      t.text :summary
      t.string :author
      t.text :link_to_amazon_com
      t.text :link_to_amazon_in
      t.text :main_image_link

      t.timestamps
    end
  end
end
