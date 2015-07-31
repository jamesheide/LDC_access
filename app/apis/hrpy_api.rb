# This class defines the functions to call the HRPY api and parse the results
class HrpyApi
  def self.hrpy_api_base
    Rails.application.secrets.hrpy_api_base
  end

  def self.hrpy_api_key
    Rails.application.secrets.hrpy_api_key
  end

  def self.get_my_orgs(net_id)
    puts "#{hrpy_api_base}/security/v1/wt/#{net_id}?api_key=#{hrpy_api_key}"
    HTTParty.get("#{hrpy_api_base}/security/v1/org/#{net_id}?api_key=#{hrpy_api_key}")
  end
  def self.get_my_apps(net_id)
    HTTParty.get(
      "#{hrpy_api_base}/security/v1/wt/#{net_id}?api_key=#{hrpy_api_key}"
    )
    
  end
end
