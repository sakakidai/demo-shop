module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :shop, Types::ShopType, null: true do
      description 'Find Shop by ID'
      argument :id, ID, required: true
    end

    field :shops, [Types::ShopType], null: false

    def shop(id: )
      Shop.find(id)
    end

    def shops
      Shop.all
    end
  end
end
