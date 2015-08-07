require 'rails_helper'

RSpec.describe 'HrpyApi' do
  it 'gets a response from the website' do
    response = HrpyApi.get_my_orgs('jheide')
    expect(response.body).to eq('hello')
  end
end
