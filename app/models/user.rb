class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts
  has_many :likes
  has_many :comments

  validates :email, :password, presence: true
  def return_three_posts
    posts.order('created_at Desc').limit(3)
  end

  def admin?
    role == 'admin'
  end
end
