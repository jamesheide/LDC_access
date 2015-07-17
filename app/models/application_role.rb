class ApplicationRole < ActiveRecord::Base
	validates_uniqueness_of :application, :scope => :role
  has_one :request_app
end
