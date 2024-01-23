# frozen_string_literal: true
module Types
  class QueryType < Types::BaseObject
    description 'The query root of this schema'

    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :sample_connection, Types::SampleType.connection_type, null: false do
      description 'サンプル一覧を取得する'
    end

    field :sample, Types::SampleType, null: true do
      description 'ID指定でサンプルを取得する'
      argument :id, ID, required: true, description: 'サンプルID'
    end

    def sample_connection
      Sample.all
    end

    def sample(id:)
      Sample.find(id)
    end
  end
end
