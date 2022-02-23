class CardSerializer < ActiveModel::Serializer
  attributes :card_id, :card_user_id, :list_id, :card_title, :list_title, :body, :status

  def card_id
    object.id
  end

  def card_user_id
    object.user_id
  end

  def list_id
    object.list_id
  end

  def list_title
    object.list.list_title
  end

end
