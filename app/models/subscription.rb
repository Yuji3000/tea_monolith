class Subscription < ApplicationRecord
  belongs_to :user
  belongs_to :tea

  validates :status, :frequency_weeks, presence: true



end