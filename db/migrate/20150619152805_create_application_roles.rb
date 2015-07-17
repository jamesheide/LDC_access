class CreateApplicationRoles < ActiveRecord::Migration
  def change
    create_table :application_roles do |t|
      t.string :application
      t.string :role
      t.string :webtailor_string
      t.string :options

      t.timestamps
    end
  end
end
