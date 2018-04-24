class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.references :users, index: true, foreign_key: true
      t.string :c_content
      t.references :posts, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
