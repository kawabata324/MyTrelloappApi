class UserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :nick_name, :image

  def user_name
    object.name
  end

  def nick_name
    return object.name if object.nickname.nil?
    object.nickname
  end
end
