class Message < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :context, presence: true, length: { maximum: 500 }
end
