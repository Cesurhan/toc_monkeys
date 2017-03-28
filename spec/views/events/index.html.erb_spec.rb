require 'rails_helper'

describe 'views/index.html.erb' do
  it 'displays event list correctly' do
    assign(:event, Event.create(title: 'TOC1'))

    render

    rendered.should contain('TOC1')

  end
end
