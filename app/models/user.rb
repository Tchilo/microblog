class User < ApplicationRecord
  has_many :posts
  has_many :likes
  has_many :comments

  def return_last_three_posts
    posts.last(3)
  end

  def current_user
    users.first
    end
end
