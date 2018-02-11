Types::PostType = GraphQL::ObjectType.define do
  name "PostType"

  field :id, !types.ID
  field :title, types.String
  field :comments, types[Types::CommentType]
  
end
