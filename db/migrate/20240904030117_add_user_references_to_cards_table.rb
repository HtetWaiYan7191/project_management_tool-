# frozen_string_literal: true

class AddUserReferencesToCardsTable < ActiveRecord::Migration[7.1]
  def change
    add_reference :cards, :creator, null: false, foreign_key: { to_table: :users }
  end
end
