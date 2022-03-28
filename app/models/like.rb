class Like < ApplicationRecord
  belongs_to :user
  belongs_to :post

  after_save :update_like_counter

  private

  def update_likes_counter
    post.likes_counter += 1
    post.increment!(:likes_counter)
  end
end
