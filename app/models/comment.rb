class Comment < ApplicationRecord
  include Visible
  belongs_to :post
  validates :commenter, :text, presence: true
end
