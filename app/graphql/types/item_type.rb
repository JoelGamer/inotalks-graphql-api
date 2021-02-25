module Types
  class ItemType < Types::BaseObject
    field :id, ID, null: false, description: 'O id registrado pelo banco'
    field :name, String, null: true, description: 'O nome do item'
    field :price, Integer, null: true, description: 'O preço do item'
    field :user, Types::UserType, null: false, description: 'O usuário que anunciou o item'
  end
end
