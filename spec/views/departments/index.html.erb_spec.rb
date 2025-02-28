# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'departments/index', type: :view do
  before(:each) do
    assign(:departments, [
             Department.create!(
               name: 'Name',
               company: nil
             ),
             Department.create!(
               name: 'Name',
               company: nil
             )
           ])
  end

  it 'renders a list of departments' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new(nil.to_s), count: 2
  end
end
