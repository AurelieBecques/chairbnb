class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :chair

  validates :start_time, :end_time, presence: true
  validate :end_time_cannot_be_in_the_past

  private

  def end_time_cannot_be_in_the_past
    if end_time && start_time && end_time < start_time
      errors.add(:end_time, "can't be before start time")
    end
  end
end
