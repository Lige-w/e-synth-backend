class ChangeKeyToKeyNameInPads < ActiveRecord::Migration[5.2]
  def change
    rename_column :pads, :key, :key_name
  end
end
