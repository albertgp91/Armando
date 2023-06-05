class Letter < ApplicationRecord
  belongs_to :user
  belongs_to :received, class_name: "User", foreign_key: "received_id"
  validates_presence_of :subject
end
