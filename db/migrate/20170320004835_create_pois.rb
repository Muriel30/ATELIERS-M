class CreatePois < ActiveRecord::Migration[5.0]
  def change
    create_table :pois do |t|
      t.string :title
      t.text :caption

      t.timestamps
    end
  end
end
