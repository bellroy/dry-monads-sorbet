# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dry-core` gem.
# Please instead update this file by running `bin/tapioca gem dry-core`.

# typed: true

module Dry
  class << self
    def Equalizer(*keys, **options); end
  end
end

module Dry::Core; end

module Dry::Core::ClassAttributes
  include ::Dry::Core::Constants

  def defines(*args, type: T.unsafe(nil), coerce: T.unsafe(nil)); end
end

Dry::Core::ClassAttributes::EMPTY_ARRAY = T.let(T.unsafe(nil), Array)
Dry::Core::ClassAttributes::EMPTY_HASH = T.let(T.unsafe(nil), Hash)
Dry::Core::ClassAttributes::EMPTY_OPTS = T.let(T.unsafe(nil), Hash)
Dry::Core::ClassAttributes::EMPTY_SET = T.let(T.unsafe(nil), Set)
Dry::Core::ClassAttributes::EMPTY_STRING = T.let(T.unsafe(nil), String)
Dry::Core::ClassAttributes::IDENTITY = T.let(T.unsafe(nil), Proc)
Dry::Core::ClassAttributes::Self = T.let(T.unsafe(nil), Proc)
Dry::Core::ClassAttributes::Undefined = T.let(T.unsafe(nil), Object)

module Dry::Core::Constants
  class << self
    def included(base); end
  end
end

Dry::Core::Constants::EMPTY_ARRAY = T.let(T.unsafe(nil), Array)
Dry::Core::Constants::EMPTY_HASH = T.let(T.unsafe(nil), Hash)
Dry::Core::Constants::EMPTY_OPTS = T.let(T.unsafe(nil), Hash)
Dry::Core::Constants::EMPTY_SET = T.let(T.unsafe(nil), Set)
Dry::Core::Constants::EMPTY_STRING = T.let(T.unsafe(nil), String)
Dry::Core::Constants::IDENTITY = T.let(T.unsafe(nil), Proc)
Dry::Core::Constants::Self = T.let(T.unsafe(nil), Proc)
Dry::Core::Constants::Undefined = T.let(T.unsafe(nil), Object)

module Dry::Core::Deprecations
  class << self
    def [](tag); end
    def announce(name, msg, tag: T.unsafe(nil), uplevel: T.unsafe(nil)); end
    def deprecated_name_message(old, new = T.unsafe(nil), msg = T.unsafe(nil)); end
    def deprecation_message(name, msg); end
    def logger(output = T.unsafe(nil)); end
    def set_logger!(output = T.unsafe(nil)); end
    def warn(msg, tag: T.unsafe(nil), uplevel: T.unsafe(nil)); end
  end
end

module Dry::Core::Deprecations::Interface
  def deprecate(old_name, new_name = T.unsafe(nil), message: T.unsafe(nil)); end
  def deprecate_class_method(old_name, new_name = T.unsafe(nil), message: T.unsafe(nil)); end
  def deprecate_constant(constant_name, message: T.unsafe(nil)); end
  def deprecation_tag(tag = T.unsafe(nil)); end
  def warn(msg); end
end

Dry::Core::Deprecations::STACK = T.let(T.unsafe(nil), Proc)

class Dry::Core::Deprecations::Tagged < ::Module
  def initialize(tag); end

  def extended(base); end
end

class Dry::Core::Equalizer < ::Module
  def initialize(*keys, **options); end

  private

  def define_cmp_method; end
  def define_hash_method(immutable:); end
  def define_inspect_method; end
  def define_methods(inspect: T.unsafe(nil), immutable: T.unsafe(nil)); end
  def included(descendant); end
end

module Dry::Core::Equalizer::Methods
  def ==(other); end
  def eql?(other); end
end

class Dry::Core::InvalidClassAttributeValue < ::StandardError
  def initialize(name, value); end
end
