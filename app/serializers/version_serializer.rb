class VersionSerializer < ActiveModel::Serializer
  attributes :number , :os ,:libs
  belongs_to :package
end
