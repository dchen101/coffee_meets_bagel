class Photo < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, styles: {medium: "300x300>"},
  content_type: /\Aimage\/.*\z/
end
