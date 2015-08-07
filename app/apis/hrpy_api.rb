# This class defines the functions to call the HRPY api and parse the results
class HrpyApi
  include HTTParty
  base_uri Rails.application.secrets.hrpy_api_base
  default_params api_key: Rails.application.secrets.hrpy_api_key
  default_options.update(verify: false)

  def self.get_user_orgs(net_id)
    response = self.get("/security/v1/org/#{net_id}")
    JSON.parse(response.body)
  end

  def self.get_user_wtstrings(net_id)
    response = self.get("/security/v1/wt/#{net_id}")
    JSON.parse(response.body)
  end
end
