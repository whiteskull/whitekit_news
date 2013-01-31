RailsAdmin.config do |config|

  ################  Model configuration  ################

  # Setting WhiteNews model
  config.model WhiteNews do
    weight 6
    list do
      field :id
      field :title
      field :content do
        formatted_value do
          ActionController::Base.helpers.strip_tags(value)
        end
      end
      field :updated_at
      field :hidden do
        column_width 70
      end
    end
    edit do
      include_all_fields
      field :content do
        ckeditor do
          true
        end
      end
    end
  end

end
