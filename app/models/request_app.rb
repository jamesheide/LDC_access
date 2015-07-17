class RequestApp < ActiveRecord::Base
  belongs_to :request
  belongs_to :application_role
end