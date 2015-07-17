class RenameRequestHistory < ActiveRecord::Migration
  def change
    rename_table :request_history, :request_histories
  end
end
