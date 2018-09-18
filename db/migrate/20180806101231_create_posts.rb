class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      
      t.string :title
      t.string :writer
      t.text :content
      t.string :password

      t.timestamps null: false
    end
  end
end
