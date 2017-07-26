class Listing < ApplicationRecord
  belongs_to :user
  has_attached_file :image, styles: { small: "64x64", med: "100x100", large: "200x200" }
  validates_attachment :image, presence: true,
      content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] },
      size: { in: 0..10.megabytes }
  def full_address
    @latitude = Listing.last.latitude
    @longitude= Listing.last.longitude
  end
end
