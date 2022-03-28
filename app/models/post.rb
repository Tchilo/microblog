class Post < ApplicationRecord
  belongs_to :author
  has_many :likes
  has_many :comments

  after_save :update_author_post_counter

  def return_last_five_comments
    comments.last(5)
  end

  private

  def update_author_post_counter
    author.increment!(:posts_counter)
  end
end
