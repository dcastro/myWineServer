class FormTasting < ActiveRecord::Base
  # attr_accessible :title, :body
  has_one :wine_type
end
