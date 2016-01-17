class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.string :url, null: false
      t.string :github, null:false
      t.string :date, null: false
      t.integer :admin_id, null: false
    end
  end
end
