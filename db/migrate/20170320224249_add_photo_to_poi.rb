class AddPhotoToPoi < ActiveRecord::Migration[5.0]
  def change
    add_column :pois, :photo, :string
  end
end
