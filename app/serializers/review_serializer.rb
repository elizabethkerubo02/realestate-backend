class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :house_id, :user_id, :review
end
