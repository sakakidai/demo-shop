# frozen_string_literal: true

module Types
  class ShopMenuType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :price, Integer
    field :shop_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
