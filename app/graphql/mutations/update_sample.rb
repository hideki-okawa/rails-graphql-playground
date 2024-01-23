# frozen_string_literal: true
module Mutations
  class UpdateSample < BaseMutation
    description 'サンプルを更新する'

    argument :id, ID, required: true, description: 'サンプルID'
    argument :name, String, required: true, description: 'サンプル名'

    field :sample, Types::SampleType, null: false, description: '作成したサンプル'

    def resolve(id:, name:)
      sample = Sample.find(id)
      sample.name = name
      sample.save!
      { sample: }
    end
  end
end
