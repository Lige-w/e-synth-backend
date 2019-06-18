class OscillatorSerializer < ActiveModel::Serializer
  attributes :id, :frequency, :gain, :wave_type
end
