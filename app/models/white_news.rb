class WhiteNews < ActiveRecord::Base
  attr_accessible :title , :content, :hidden, as: :admin

  scope :visible, where(hidden: false)
  scope :latest, lambda { |count| order('updated_at DESC').limit(count).visible }
end
