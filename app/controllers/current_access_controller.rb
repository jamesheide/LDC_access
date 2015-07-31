# Documentation up here
class CurrentAccessController
  def my_orgs 
    response = HrpyApi.get_my_orgs(params[:net_id])
    render json: response
  end

  def my_apps
    render json: HrpyApi.get_my_apps(params[:net_id])
  end
end
