# This class defines the functions to call the HRPY api and parse the results
class HrpyApi
  def self.get_my_orgs(net_id)
    HTTParty.get(
      "#{ENV['hrpy_api_base']}/security/v1/org/#{net_id}?#{ENV['hrpy_api_key']}"
    )
  end
  def self.get_my_apps(net_id)
    HTTParty.get(
      "#{ENV['hrpy_api_base']}/security/v1/wt/#{net_id}?#{ENV['hrpy_api_key']}"
    )
  end
end
