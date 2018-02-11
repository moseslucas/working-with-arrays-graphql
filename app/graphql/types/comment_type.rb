Types::CommentType = GraphQL::ObjectType.define do
  name "CommentType"

  field :id, !types.ID
  field :content, types.String
  
end
