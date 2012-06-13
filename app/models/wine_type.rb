class WineType < ActiveRecord::Base
  attr_accessible :name_en, :name_fr, :name_pt, :user_id
  
  belongs_to :user
  belongs_to :form_tasting
  
end
