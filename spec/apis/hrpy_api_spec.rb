require 'rails_helper'

RSpec.describe 'HrpyApi' do
  it "gets user's orgs" do
    orgs = HrpyApi.get_user_orgs('jheide')
    expect(orgs.first.key?("netid")).to be true
    expect(orgs.first.key?("pidm")).to be true
    expect(orgs.first.key?("ndid")).to be true
    expect(orgs.first.key?("org_code")).to be true
    expect(orgs.first.key?("source_table")).to be true
  end
  it "gets user's wtstrings" do
    apps = HrpyApi.get_user_wtstrings('jheide')
    expect(apps.first.key?('net_id')).to be true
    expect(apps.first.key?('first_name')).to be true
    expect(apps.first.key?('last_name')).to be true
    expect(apps.first.key?('role')).to be true
  end
end
