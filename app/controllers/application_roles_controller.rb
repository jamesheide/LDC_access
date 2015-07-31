class ApplicationRolesController < ApplicationController
  def index
    @application_roles = ApplicationRole.all
    render json: @application_roles.map{ |ar| { id: ar.id, text: "#{ar.application} #{ar.role}" } }
  end
end
