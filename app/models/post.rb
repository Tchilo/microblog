class Post < ApplicationRecord
  belongs_to :user
  has_many :likes
  has_many :comments

  after_save :update_user_post_counter

  def return_last_five_comments
    comments.last(5)
  end

  private

  def update_user_post_counter
    user.increment!(:posts_counter)
  end
end
