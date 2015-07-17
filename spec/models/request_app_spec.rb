require 'rails_helper'

describe 'request_app_table' do
  it 'passes foreign key test on requestID' do
    req = Request.new
    req.req_netid = 'rsnodgra'
    req.save

    approle = ApplicationRole.new
    approle.application = 'LDC'
    approle.role = 'Faculty'
    approle.webtailor_string = 'LDC_Faculty'
    approle.options = ''
    approle.save
    
    a=RequestApp.new
    a.request_id = req.id
    a.application_role_id = approle.id
    a.change_indicator = 'A'
    a.save
    expect(a.request.req_netid).to eq('rsnodgra')
  end
  it 'passes foreign key test on AppRoleID' do
    req = Request.new
    req.req_netid = 'rsnodgra'
    req.save

    approle = ApplicationRole.new
    approle.application = 'LDC'
    approle.role = 'Faculty'
    approle.webtailor_string = 'LDC_Faculty'
    approle.options = ''
    approle.save
    
    a=RequestApp.new
    a.request_id = req.id
    a.application_role_id = approle.id
    a.change_indicator = 'A'
    a.save
    expect(a.application_role.webtailor_string).to eq('LDC_Faculty')
  end
end
