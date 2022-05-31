# frozen_string_literal: true

module Types
  class ShopType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :main_photo_path, String
    field :overview, String
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :shop_menus, [ShopMenuType], null: true

    def shop_menus
      Loaders::AssociationLoader.for(Shop, :shop_menus).load(object)
    end
  end
end
