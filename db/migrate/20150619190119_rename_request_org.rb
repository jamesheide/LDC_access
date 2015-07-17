class RenameRequestOrg < ActiveRecord::Migration
  def change
    rename_table :request_org, :request_orgs
  end
end
