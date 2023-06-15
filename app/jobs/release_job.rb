class ReleaseJob < ApplicationJob
  def perform(letter)
    letter.delivered = true
    letter.save
    puts "Delivered letter"
  end
end
