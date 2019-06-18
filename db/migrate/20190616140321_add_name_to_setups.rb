class AddNameToSetups < ActiveRecord::Migration[5.2]
  def change
    add_column :setups, :name, :string
  end
end
