# frozen_string_literal: true
class ExampleJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
    puts 'ExampleJob is running!!'
  end
end
