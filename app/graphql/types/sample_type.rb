# frozen_string_literal: true

module Types
  class SampleType < Types::BaseObject
    description 'サンプルタイプ'

    field :id, ID, null: false, description: 'ID'
    field :name, String, null: false, description: 'サンプル名'
  end
end
