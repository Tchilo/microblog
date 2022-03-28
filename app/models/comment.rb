class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  def ads_counter
    comment_counter += 1  
  end
comment_counter.increment!(:ads_counter)
end
