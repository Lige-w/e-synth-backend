class SetupSerializer < ActiveModel::Serializer
  attributes :id, :name, :pads

  def pads
    ActiveModel::SerializableResource.new(object.pads, each_serializer: PadSerializer)
  end
end
