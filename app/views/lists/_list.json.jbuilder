# frozen_string_literal: true

json.extract! list, :id, :created_at, :updated_at
json.url list_url(list, format: :json)
