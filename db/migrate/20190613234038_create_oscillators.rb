class CreateOscillators < ActiveRecord::Migration[5.2]
  def change
    create_table :oscillators do |t|
      t.float :frequency
      t.string :type
      t.float :gain
      t.belongs_to :pad, foreign_key: true

      t.timestamps
    end
  end
end
