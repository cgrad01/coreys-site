class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.string :category, null: false
      t.string :date, null: false
      t.integer :admin_id, null: false
    end
  end
end
