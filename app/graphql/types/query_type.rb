module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :search_repository, [RepositoryType], null: false do
      argument :query, String, required: false
    end

    def search_repository(query: nil)
      SearchGithubUserService.call(query)
    end
  end
end
