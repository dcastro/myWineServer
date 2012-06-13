class CreateFormTastings < ActiveRecord::Migration
  def change
    create_table :form_tastings do |t|

      t.timestamps
    end
  end
end
