class DoctorSerializer < ActiveModel::Serializer
  attributes :id, :title, :image_url, :name, :bio, :email, :doc
end
