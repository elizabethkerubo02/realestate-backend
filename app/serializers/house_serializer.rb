class HouseSerializer < ActiveModel::Serializer
  attributes :id, :location, :price, :name, :image

  def price
    "$#{self.object.pricing}"
  end
end
