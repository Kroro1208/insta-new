class Notification < ApplicationRecord
  has_many :user_notifications, dependent: :destroy
  has_many :users, through: :user_notifications
  validates :title, presence: true
  validates :url, presemce: true, format: /\A#{URI::DEFAULT_PARSER.make_regexp(%w[http https])}\z/

  def notify(*user)
    users = user.flatten
    user_notifications = users.pluck(user_id).map do |user_id|
      { notification_id: id, user_id: }
    end
    UserNotification.insert_all(user_notifications) # rubocop:disable Rails/SkipsModelValidations
  end
end
