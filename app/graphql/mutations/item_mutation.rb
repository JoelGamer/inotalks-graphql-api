class Mutations::ItemMutation < Mutations::BaseMutation
  argument :id, Integer, required: true
  argument :name, String, required: true

  field :id, ID, null: false
  field :name, String, null: false

  def resolve(id:, name:)
    item = Item.find(id)

    unless item
      return {}
    end

    item.update!(name: name)

    {
      id: item.id,
      name: item.name 
    }
  end
end