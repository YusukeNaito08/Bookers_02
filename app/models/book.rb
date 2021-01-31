class Book < ApplicationRecord
  belongs_to :user
  has_many :book_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  
  def favorite_by?(user)
    favorites.where(user_id: user.id).exists?
  end
end
