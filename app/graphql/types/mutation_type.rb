# frozen_string_literal: true
module Types
  class MutationType < Types::BaseObject
    description 'The mutation root of this schema'

    field :create_sample,
          mutation: Mutations::CreateSample,
          description: 'サンプルを作成する'
    field :delete_sample,
          mutation: Mutations::DeleteSample,
          description: 'サンプルを削除する'
    field :update_sample,
          mutation: Mutations::UpdateSample,
          description: 'サンプルを更新する'
  end
end
