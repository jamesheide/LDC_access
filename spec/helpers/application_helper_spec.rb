require 'rails_helper'

describe ApplicationHelper do
  context 'get_user_apps' do
    it 'returns the intersection of remote roles and local application roles' do
      role = ApplicationRole.create(application: 'LDC', role: 'Admin', webtailor_string: 'ND_LDC_ADMIN')
      role2 = ApplicationRole.create(application: 'LDC', role: 'Faculty', webtailor_string: 'ND_LDC_FACULTY')
      remote = [{"net_id"=>"JHEIDE", "first_name"=>"James", "last_name"=>"Heide", "role"=>"ND_LDC_ADMIN"},
                {"net_id"=>"JHEIDE", "first_name"=>"James", "last_name"=>"Heide", "role"=>"ND_LDC_FACULTY"},
                {"net_id"=>"JHEIDE", "first_name"=>"James", "last_name"=>"Heide", "role"=>"ND_LDC_POST_DOC"},
                {"net_id"=>"JHEIDE", "first_name"=>"James", "last_name"=>"Heide", "role"=>"ND_LDC_STAFF"},
                {"net_id"=>"JHEIDE", "first_name"=>"James", "last_name"=>"Heide", "role"=>"ND_LDC_STUDENT"},
                {"net_id"=>"JHEIDE", "first_name"=>"James", "last_name"=>"Heide", "role"=>"NONSTUEMP"},
                {"net_id"=>"JHEIDE", "first_name"=>"James", "last_name"=>"Heide", "role"=>"WTAILORADMIN"}]
      expect(get_user_apps(remote)).to include(role)
      expect(get_user_apps(remote)).to include(role2)
    end
  end
end
