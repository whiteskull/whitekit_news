class WhiteNews < ActiveRecord::Base
  mount_uploader :image, WhiteNewsImageUploader

  default_scope order('updated_at DESC')

  attr_accessible :title , :content, :hidden, :image, :image_cache, :remove_image, as: :admin

  validates_presence_of :title

  scope :visible, -> { where(hidden: false) }
  scope :latest, lambda { |count| limit(count).visible }
end


