class Note < ApplicationRecord
  validates :subject, :body, presence: true
end
