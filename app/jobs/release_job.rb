class ReleaseJob < ApplicationJob
  queue_as :default

  def perform(letter)
    letter.delivered = true
    letter.save
    puts "Delivered letter"
  end
end
