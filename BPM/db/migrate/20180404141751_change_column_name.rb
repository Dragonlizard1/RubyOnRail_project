class ChangeColumnName < ActiveRecord::Migration
  def change
  	rename_column Post, :blog_id_id, :blog_id
  end
end
