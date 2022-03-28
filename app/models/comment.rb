class Comment < ApplicationRecord
  belongs_to :author, foreign_key: :author_id
  belongs_to :post, foreign_key: :author_id

  after_save :update_post_comment_count

  private

  def update_post_comment_count
    comments.order('created_at Desc').limit(5)
  end

end
