class Post < ApplicationRecord
belongs_to :user
has_many :photos, dependent: :destroy
has_many :likes, -> {order(:created_at => :desc)}
has_many :comments, -> {order(:created_at => :desc)}
has_many :bookmarks
has_many :favorites, dependent: :destroy
has_many :favorite_users, through: :favorites, source: :user
mount_uploader :image, PhotoUploader
validates :image, presence: true
validates :content, presence: true, length: { maximum: 140 }


def is_belongs_to? user
  Post.find_by(user_id: user.id, id: id)
end

def is_liked user
  Like.find_by(user_id: user.id, post_id: id)
end

def is_bookmarked user
  Bookmark.find_by(user_id: user.id, post_id: id)
end

end
