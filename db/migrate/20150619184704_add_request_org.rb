class AddRequestOrg < ActiveRecord::Migration
  def change
    create_table :request_org do |t|
      t.belongs_to :request, index: true
      t.string :org_code
      t.string :change_indicator

      t.timestamps
    end
  end
end
