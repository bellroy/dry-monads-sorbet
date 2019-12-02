# typed: strict
# frozen_string_literal: true

class Dry::Monads::Result
  extend T::Sig
  extend T::Generic
  FailureType = type_member
  SuccessType = type_member
end

class Dry::Monads::Maybe
  extend T::Sig
  extend T::Generic
  Elem = type_member
end
