class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  after_save :update_post_comment_count

  private

  def update_post_comment_count
    posts.increment!(:comments_counter)
  end
end
