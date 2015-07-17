class AddRequestHistory < ActiveRecord::Migration
  def change
    create_table :request_history do |t|
      t.belongs_to :requests, index: true
      t.string :status
      t.datetime :tine
      t.string :done_by

      t.timestamps
    end
  end
end
