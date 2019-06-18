class ChangeTypeToWaveTypeInOscillators < ActiveRecord::Migration[5.2]
  def change
    rename_column :oscillators, :type, :wave_type
  end
end
