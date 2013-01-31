class WhiteNews < ActiveRecord::Base
  mount_uploader :image, WhiteNewsImageUploader

  default_scope order('updated_at DESC')

  attr_accessible :title , :content, :hidden, :image, as: :admin

  scope :visible, where(hidden: false)
  scope :latest, lambda { |count| limit(count).visible }
end


