Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :allPosts, types[Types::PostType] do
      resolve -> (obj, args, ctx) {
        Post.all
      }
  end

end
