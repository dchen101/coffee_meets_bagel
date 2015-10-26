class Photo < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :comments
  has_many :tags
  has_attached_file :image, styles: {medium: "300x300>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  def liked?(user_id)
    self.likes.find { |like| like.user_id == user_id }
  end
end
