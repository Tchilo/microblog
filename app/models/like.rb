class Like < ApplicationRecord
  belongs_to :author
  belongs_to :post

  after_save :update_like_counter

  private

  def update_likes_counter
    post.increment!(:likes_counter)
  end
end
