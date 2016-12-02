class Event < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :comments
  belongs_to :creator, class_name: 'User', primary_key: 'id'
end
