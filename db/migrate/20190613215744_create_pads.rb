class CreatePads < ActiveRecord::Migration[5.2]
  def change
    create_table :pads do |t|
      t.string :key
      t.float :gain
      t.belongs_to :setup, foreign_key: true

      t.timestamps
    end
  end
end
