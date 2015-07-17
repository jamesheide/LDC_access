require 'rails_helper'

describe 'request_org_table' do
  it 'passes foreign key test on requestID' do
    req = Request.new
    req.req_netid = 'rsnodgra'
    req.save
    
    a=RequestOrg.new
    a.request_id = req.id
    a.org_code = '30000'
    a.change_indicator = 'A'
    a.save
    expect(a.request.req_netid).to eq('rsnodgra')
  end
end
