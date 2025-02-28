# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'departments/show', type: :view do
  before(:each) do
    assign(:department, Department.create!(
                          name: 'Name',
                          company: nil
                        ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(//)
  end
end
