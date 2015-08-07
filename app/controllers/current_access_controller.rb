# Documentation up here
class CurrentAccessController < ApplicationController
  def my_orgs 
    # response = 'hello world'
    # response = 
    render json: HrpyApi.get_my_orgs(params[:net_id])
  end

  def my_apps
    # render json: HrpyApi.get_my_apps(params[:net_id])
  end
end
