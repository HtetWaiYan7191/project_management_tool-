# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'cards/show', type: :view do
  before(:each) do
    assign(:card, Card.create!(
                    title: 'Title'
                  ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
  end
end
