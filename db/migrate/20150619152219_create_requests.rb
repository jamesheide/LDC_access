class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :req_netid

      t.timestamps
    end
  end
end
