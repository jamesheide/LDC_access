class AddRequestApp < ActiveRecord::Migration
  def change
    create_table :request_apps do |t|
      t.belongs_to :request, index: true
      t.belongs_to :application_role, index: true
      t.string :change_indicator

      t.timestamps
    end
  end
end
