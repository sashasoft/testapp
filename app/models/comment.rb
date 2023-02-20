class Comment < ApplicationRecord
  belongs_to :post
  validates :commenter, :text, presence: true
end
