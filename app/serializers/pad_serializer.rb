class PadSerializer < ActiveModel::Serializer
  attributes :id, :gain, :key_name, :oscillators_attributes

  def oscillators_attributes
    ActiveModel::SerializableResource.new(object.oscillators,  each_serializer: OscillatorSerializer)
  end
end
