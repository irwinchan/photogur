class AddCommentForeignKey < ActiveRecord::Migration
  def change
    add_column :comments, :picture_id, :integer
    remove_column :pictures, :comment
  end
end
