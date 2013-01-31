class WhiteNews < ActiveRecord::Base
  default_scope order('updated_at DESC')

  attr_accessible :title , :content, :hidden, as: :admin

  scope :visible, where(hidden: false)
  scope :latest, lambda { |count| limit(count).visible }
end


