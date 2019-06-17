class UserSerializer < ActiveModel::Serializer
  attributes :username, :setups

  def setups
    ActiveModel::SerializableResource.new(object.setups, each_serializer: SetupSerializer)
  end
end
