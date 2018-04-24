class AddDojoColumnToNinjas < ActiveRecord::Migration
  def change
    add_column :ninjas, :dojo_id, :string
    add_column :ninjas, :reference, :string
  end
end
