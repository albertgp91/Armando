class Letter < ApplicationRecord
  belongs_to :user
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
  validates_presence_of :subject
  has_many_attached :photos

  after_commit :schedule_letter, on: :create

  private

  def schedule_letter
    weekday = receiver.receiving_day.first
    time = receiver.receiving_time
    weekdays = [
      "Monday",
      "Tuesday",
      "Wednesday",
      "Thursday",
      "Friday",
      "Saturday",
      "Sunday"
    ]
    relative_weekday = weekdays.index(weekday) + 1 - Date.today.cwday
    next_delivery_date =
      if relative_weekday.positive?
        Date.today + relative_weekday
      else
        Date.today + 7 + relative_weekday
      end

    ReleaseJob.set(
      wait_until: DateTime.new(
        next_delivery_date.year,
        next_delivery_date.month,
        next_delivery_date.day,
        time.hour,
        time.min
      )
    ).perform_later(self)
  end
end
