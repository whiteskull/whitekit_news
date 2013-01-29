module WhitecmsNews
  class News < ActiveRecord::Base
    attr_accessible :title , :content, as: :admin
  end
end
