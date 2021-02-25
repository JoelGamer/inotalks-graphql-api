class Mutations::ItemMutation < Mutations::BaseMutation
  argument :id, Integer, required: true
  argument :first_name, String, required: false

  field :id, ID, null: false
  field :first_name, String, null: false

  def resolve(id:, first_name: nil)
    user = User.find(id)

    unless user
      return {}
    end

    user.update!(first_name: first_name)

    {
      id: user.id,
      first_name: user.first_name 
    }
  end
end