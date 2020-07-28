# typed: false
# frozen_string_literal: true

require 'rails'

module DryMonadsSorbet
  class Railtie < Rails::Railtie
    railtie_name 'dry-monads-sorbet'

    rake_tasks do
      path = File.expand_path(__dir__)
      Dir.glob("#{path}/tasks/**/*.rake").each { |f| load f }
    end
  end
end
