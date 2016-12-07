class Event < ApplicationRecord
  mount_uploader :picture, PictureUploader
  geocoded_by :event_address
  after_validation :geocode

  has_and_belongs_to_many :users

  has_many :comments, dependent: :destroy
  belongs_to :creator, class_name: 'User', primary_key: 'id'


  # validates :postal_code, presence: true, length: { is: 6, message: "Please give a valid postal code" }, numericality: { only_integer: true, message: "Numbers only" }
  # validates :players_req, presence: true

end
