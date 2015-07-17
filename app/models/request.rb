class Request < ActiveRecord::Base
  has_one :request_history
  has_one :request_org
end
