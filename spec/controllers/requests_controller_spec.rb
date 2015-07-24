require 'rails_helper'

RSpec.describe RequestsController do
  describe 'Get new' do 
    it 'has all application roles' do
      a = ApplicationRole.create(application: 'LDC', role: 'Faculty')
      b = ApplicationRole.create(application: 'LDC', role: 'Student')
      get :new
      expect(assigns(:application_roles)).to include(a)
      expect(assigns(:application_roles)).to include(b)
    end
  end
end