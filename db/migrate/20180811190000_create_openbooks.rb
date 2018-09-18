class CreateOpenbooks < ActiveRecord::Migration
  def change
    create_table :openbooks do |t|
      t.string :book_title
      t.string :book_writer
      t.string :book_translator

      t.timestamps null: false
    end
  end
end
