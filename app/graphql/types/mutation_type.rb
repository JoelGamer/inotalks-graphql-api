module Types
  class MutationType < Types::BaseObject
    field :item_mutation, mutation: Mutations::ItemMutation
  end
end
