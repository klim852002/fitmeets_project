class Event < ApplicationRecord
  mount_uploader :picture, PictureUploader
  # geocoded_by :event_address
  geocoded_by :address_country

  def address_country
    [self.event_address].to_s + ' Singapore'
  end
  # , :lookup => :region == "SG"
  # def event_address
  #    Venue.near( params["event_address"] << ", Singapore" , 50)
  # end
  # Geocoder.search('event_address', :params => {:country => "sg"})

  #   def event_address
  #     "#{locale}, Singapore"
  #   end

  # geocoded_by :event_address do |prof,results|
  #   if result = results.select{|res| res.country_code == "SG" }.first
  #     unless (result.latitude.nil? || result.longitude.nil?)
  #       prof.latitude = result.latitude
  #       prof.longitude = result.longitude
  #     end
  #     result.coordinates
  #   end
  # end
  after_validation :geocode

  has_and_belongs_to_many :users

  has_many :comments, dependent: :destroy
  belongs_to :creator, class_name: 'User', primary_key: 'id'

  validates :postal_code, presence: true, length: { is: 6, message: "Please give a valid postal code" }, numericality: { only_integer: true, message: "Numbers only" }
  validates :players_req, presence: true


end
