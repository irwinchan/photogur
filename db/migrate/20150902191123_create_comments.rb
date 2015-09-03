class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :user
      t.string :title
      t.text :comment
      t.string :email

      t.timestamps null: false
    end
  end
end
