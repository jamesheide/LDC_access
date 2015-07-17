require 'rails_helper'

RSpec.describe 'routing to home', type: :routing do 
  it 'routes / to welcome#index' do
    expect(get: '/').to route_to(
      controller: 'welcome',
      action: 'index'
    )
  end
end
