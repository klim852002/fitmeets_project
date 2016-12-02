class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_and_belongs_to_many :events

  has_many :comments, dependent: :destroy

  validates :name, presence: true, length: { maximum: 50, message: "Maximum of 50 letters" }, format: { with: /\A[a-zA-Z]+\z/, message: "Letters only" }
  validates :contact_number, presence: true, uniqueness: true, length: { is: 8, message: "Please give a valid contact number" }, numericality: { only_integer: true, message: "Numbers only" }

end
