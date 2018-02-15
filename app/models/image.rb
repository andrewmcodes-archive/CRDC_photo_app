# == Schema Information
#
# Table name: images
#
#  id         :integer          not null, primary key
#  name       :string
#  picture    :string
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Image Model
class Image < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, PictureUploader

  validate :picture_size
  validate :picture_empty

  private

  def picture_size
    errors.add(:picture, 'should be less than 5MB') if picture.size > 5.megabytes
  end

  def picture_empty
    errors.add(:picture, 'must be uploaded') if picture.blank?
  end
end
