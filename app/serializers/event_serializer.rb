class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :venue, :date
  has_many :users
end
