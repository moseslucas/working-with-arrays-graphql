Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"
  
  field :addPost, Types::PostType do
    argument :title, types.String
    argument :comments, types[Inputs::CommentInput]

    resolve -> (obj, args, ctx) {
      post = Post.create title: args[:title]
      if args[:comments]
        args[:comments].each do |comment|
          post.comments.create content: comment.content
        end
      end
      post
    }
  end
end
