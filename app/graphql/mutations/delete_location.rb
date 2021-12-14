module Mutations
  class DeleteLocation < BaseMutation
    argument :id, ID, required: true

    type Types::LocationType

    def resolve(id:)
      location = Location.find(id)
      location.destroy
    end
  end
end
