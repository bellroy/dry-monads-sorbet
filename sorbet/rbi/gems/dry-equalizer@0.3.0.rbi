# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dry-equalizer` gem.
# Please instead update this file by running `bin/tapioca gem dry-equalizer`.

# typed: true

module Dry
  class << self
    def Equalizer(*keys, **options); end
  end
end

class Dry::Equalizer < ::Module
  def initialize(*keys, **options); end

  private

  def define_cmp_method; end
  def define_hash_method(immutable:); end
  def define_inspect_method; end
  def define_methods(inspect: T.unsafe(nil), immutable: T.unsafe(nil)); end
  def included(descendant); end
end

module Dry::Equalizer::Methods
  def ==(other); end
  def eql?(other); end
end