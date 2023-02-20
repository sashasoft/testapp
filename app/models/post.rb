class Post < ApplicationRecord
  include Visible
  has_many :comments, dependent: :destroy
  validates :title, :text, presence: true, length: { minimum: 10 }
end
