class Comment < ApplicationRecord
  belongs_to :event
  belongs_to :user

  validates :message, presence: true
end
