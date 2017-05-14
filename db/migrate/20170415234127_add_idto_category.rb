class AddIdtoCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :pois, :category_id, :integer
  end
end
