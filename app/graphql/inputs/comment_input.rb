Inputs::CommentInput = GraphQL::InputObjectType.define do
  name "CommentInput"

  argument :content, !types.String
end

