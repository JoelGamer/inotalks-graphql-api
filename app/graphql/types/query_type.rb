module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :items, [Types::ItemType], null: false do
      argument :id, Integer, required: false
    end

    def items(**args)
      if args[:id]
        Item.where(id: args[:id])
      else
        Item.all
      end
    end

    field :users, [Types::UserType], null: false

    def users
      User.all
    end
  end
end
