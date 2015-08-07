# Documentation up here
class CurrentAccessController < ApplicationController
  helper_method :get_user_apps
  def my_orgs
    render json: HrpyApi.get_user_orgs(params[:net_id])
  end

  def my_apps
    render json: HrpyApi.get_user_wtstrings(params[:net_id])
  end
end
