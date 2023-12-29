class UserNotification < ApplicationRecord
  belongs_to :notification
  belongs_to :user

  validates :read, inclusion: { in: [true, false] }
  validates :notification_id, uniqueness: { scope: :user_id }

  delegate :title, to: :notification, prefix: true
  delegate :url, to: :notification, prefix: true
end
