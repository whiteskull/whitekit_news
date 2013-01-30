class WhiteNews < ActiveRecord::Base
  attr_accessible :title , :content, as: :admin
end
