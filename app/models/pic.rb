class Pic < ApplicationRecord
  scope :sorted, -> {order("created_at DESC")}

  validates :title, presence: true, length: {minimum: 5, maximum: 100}
  validates :description, presence:true, length: {minimum: 10}

  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :user
end
