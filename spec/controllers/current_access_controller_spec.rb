require 'rails_helper'

RSpec.describe CurrentAccessController do
  describe 'my_orgs' do
    it 'renders JSON correctly' do
      get :my_orgs, net_id: 'jheide'
      expect(response.body.first).to eq([ { :"id" => 12345, :"org" => 123456 } ])

    end
  end
end
