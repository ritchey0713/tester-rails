class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.boolean :published
      t.belongs_to :tag
    end
  end
end
