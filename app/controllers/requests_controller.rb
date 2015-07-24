class RequestsController < ApplicationController
  def new
    @application_roles = ApplicationRole.all
  end
end