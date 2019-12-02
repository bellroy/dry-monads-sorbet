# frozen_string_literal: true

require 'sorbet-runtime'
require 'dry/monads/all'
require 'dry/monads/sorbet'

module Dry
  module Monads
    describe Sorbet do
      class ExampleClass
        extend T::Sig

        sig{params(will_be_success: T::Boolean).returns(Dry::Monads::Result[StandardError, String])}
        def my_result(will_be_success)
          if will_be_success
            Dry::Monads::Success("Hello World")
          else
            Dry::Monads::Failure(StandardError.new("Is failure"))
          end
        end

        sig{params(some_value: T.nilable(String)).returns(Dry::Monads::Maybe[String])}
        def my_maybe(some_value)
          Dry::Monads::Maybe(some_value)
        end
      end

      describe 'Result' do
        subject(:result) { ExampleClass.new.my_result(will_be_success) }

        context 'when successful' do
          let(:will_be_success) { true }

          specify do
            expect(result.value!).to eq 'Hello World'
          end
        end

        context 'when unsuccessful' do
          let(:will_be_success) { false }

          specify do
            expect(result.failure).to eq StandardError.new("Is failure")
          end
        end
      end

      describe 'Maybe' do
        subject(:result) { ExampleClass.new.my_maybe(some_value) }

        context 'when some value' do
          let(:some_value) { 'Hello World' }

          specify do
            expect(result.some?).to be true
            expect(result.value!).to eq 'Hello World'
          end
        end

        context 'when none' do
          let(:some_value) { nil }

          specify do
            expect(result.none?).to be true
          end
        end
      end
    end
  end
end
