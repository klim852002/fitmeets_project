class Comment < ApplicationRecord
  belongs_to :event
  belongs_to :user

  # validates :message, presence: true, length: { maximum: 50, message: "Maximum of 50 letters" }

end
