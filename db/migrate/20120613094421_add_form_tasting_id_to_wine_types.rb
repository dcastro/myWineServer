class AddFormTastingIdToWineTypes < ActiveRecord::Migration
  def change
    add_column :wine_types, :form_tasting_id, :integer
  end
end
