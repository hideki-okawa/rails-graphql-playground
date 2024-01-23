# frozen_string_literal: true
module Mutations
  class CreateSample < BaseMutation
    description 'サンプルを作成する'

    argument :name, String, required: true, description: 'サンプル名'

    field :sample, Types::SampleType, null: false, description: '作成したサンプル'

    def resolve(name:)
      sample = Sample.create!(name:)
      { sample: }
    end
  end
end
