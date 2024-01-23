# frozen_string_literal: true
class CreateSamples < ActiveRecord::Migration[7.0]
  def change
    create_table :samples, comment: 'サンプルテーブル' do |t|
      t.string :name, null: false, comment: 'サンプル名'

      t.timestamps
    end
  end
end
