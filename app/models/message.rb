class Message < ApplicationRecord
  belongs_to :user
  validates :user, presence: true
  after_create_commit { MessageBroadcastJob.perform_later self}
end
