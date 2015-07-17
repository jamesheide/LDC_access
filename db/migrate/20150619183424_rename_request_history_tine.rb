class RenameRequestHistoryTine < ActiveRecord::Migration
  def change
    rename_column :request_histories, :tine, :time
    rename_column :request_histories, :requests_id, :request_id
  end
end
