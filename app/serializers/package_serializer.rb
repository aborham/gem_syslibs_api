class PackageSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :versions
end
