class DepartmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url
  has_many :doctors
end
