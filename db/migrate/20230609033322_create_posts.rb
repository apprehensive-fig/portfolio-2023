class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :p_type
      t.string :title
      t.string :body
      t.string :meta_image

      t.timestamps
    end
  end
end
