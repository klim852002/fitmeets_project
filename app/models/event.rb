class Event < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :comments
  belongs_to :creator, class_name: 'User', primary_key: 'id'


  # validates :postal_code, presence: true, length: { is: 6, message: "Please give a valid postal code" }, numericality: { only_integer: true, message: "Numbers only" }
  # validates :players_req, presence: true



end
