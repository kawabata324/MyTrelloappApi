class ListSerializer < ActiveModel::Serializer
  attributes :id, :list_title, :user_id
end
