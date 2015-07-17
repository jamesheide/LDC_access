require 'rails_helper'

describe 'request_history_table' do
  it 'passes foreign key test on requestID' do
    req = Request.new
    req.req_netid = 'rsnodgra'
    req.save
    
    a=RequestHistory.new
    a.request_id = req.id
    a.status = 'Pending'
    a.time = Time.now
    a.done_by = 'jheide'
    a.save
    expect(a.request.req_netid).to eq('rsnodgra')
  end
end
