class CreateWineTypes < ActiveRecord::Migration
  def change
    create_table :wine_types do |t|
      t.integer :user_id
      t.string :name_fr
      t.string :name_en
      t.string :name_pt

      t.timestamps
    end
  end
end
