class DemoUserSerializer < ActiveModel::Serializer
  attributes :id, :user_name, :email, :contexts

  def user_name
    object.name
  end

  def contexts
    object.demo_tweets.pluck(:context)
  end

end
