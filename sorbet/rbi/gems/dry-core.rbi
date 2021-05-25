# This file is autogenerated. Do not edit it by hand. Regenerate it with:
#   srb rbi gems

# typed: strict
#
# If you would like to make changes to this file, great! Please create the gem's shim here:
#
#   https://github.com/sorbet/sorbet-typed/new/master?filename=lib/dry-core/all/dry-core.rbi
#
# dry-core-0.5.0

module Dry
end
module Dry::Core
end
module Dry::Core::Constants
  def self.included(base); end
end
module Dry::Core::Deprecations
  def self.[](tag); end
  def self.announce(name, msg, tag: nil); end
  def self.deprecated_name_message(old, new = nil, msg = nil); end
  def self.deprecation_message(name, msg); end
  def self.logger(output = nil); end
  def self.set_logger!(output = nil); end
  def self.warn(msg, tag: nil); end
end
class Dry::Core::Deprecations::Tagged < Module
  def extended(base); end
  def initialize(tag); end
end
module Dry::Core::Deprecations::Interface
  def deprecate(old_name, new_name = nil, message: nil); end
  def deprecate_class_method(old_name, new_name = nil, message: nil); end
  def deprecate_constant(constant_name, message: nil); end
  def deprecation_tag(tag = nil); end
  def warn(msg); end
end
