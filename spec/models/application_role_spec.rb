require 'rails_helper'

describe 'application_role_table' do
	it 'passes uniqueness test over application and role columns' do
		a = ApplicationRole.new
		a.application = 'LDC'
		a.role = 'Faculty'
		a.save

		b = ApplicationRole.new
		b.application = 'LDC'
		b.role = 'Faculty'
    b.save
		expect(b).not_to be_valid
	end
  it 'returns true if on valid application role' do
    a = ApplicationRole.new
    a.application = 'LDC'
    a.role = 'Faculty'
    a.save
    expect(a).to be_valid
  end
end
