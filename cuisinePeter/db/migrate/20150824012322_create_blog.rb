class CreateBlog < ActiveRecord::Migration
  def change
    create_table :blog do |t|
      t.string :title
      t.text :content
      t.timestamps null: false
    end
  end
end
