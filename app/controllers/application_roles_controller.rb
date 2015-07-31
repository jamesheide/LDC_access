class ApplicationRolesController < ApplicationController
  def index
    @application_roles = ApplicationRole.all
    @results = { results: [] }
    @application_roles.each{ |ar| @results[:results] << { id: ar.id, text: "#{ar.application} #{ar.role}" } }
    render json: @results
  end
end