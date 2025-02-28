# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'cards/index', type: :view do
  before(:each) do
    assign(:cards, [
             Card.create!(
               title: 'Title'
             ),
             Card.create!(
               title: 'Title'
             )
           ])
  end

  it 'renders a list of cards' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Title'.to_s), count: 2
  end
end
