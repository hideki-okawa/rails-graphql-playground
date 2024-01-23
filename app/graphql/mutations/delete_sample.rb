# frozen_string_literal: true
module Mutations
  class DeleteSample < BaseMutation
    description 'サンプルを削除する'

    argument :id, ID, required: true, description: 'サンプルID'

    field :id, ID, null: false, description: 'サンプルID'

    def resolve(id:)
      Sample.find(id).destroy!
      { id: }
    end
  end
end
