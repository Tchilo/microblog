class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments

  def return_last_five_comments
    comments.last(5)
  end
end
