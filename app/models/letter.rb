class Letter < ApplicationRecord
  belongs_to :user
  belongs_to :receiver, class_name: "User", foreign_key: "receiver_id"
  validates_presence_of :subject
  has_many_attached :photos
end
