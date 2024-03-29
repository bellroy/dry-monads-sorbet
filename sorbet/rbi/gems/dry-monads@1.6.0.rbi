# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `dry-monads` gem.
# Please instead update this file by running `bin/tapioca gem dry-monads`.

# typed: true

module Dry
  class << self
    def Equalizer(*keys, **options); end
  end
end

module Dry::Monads
  include ::Dry::Core::Constants
  extend ::Dry::Monads::Maybe::Mixin::Constructors
  extend ::Dry::Monads::Result::Mixin::Constructors
  extend ::Dry::Monads::Validated::Mixin::Constructors
  extend ::Dry::Monads::Lazy::Mixin::Constructors
  extend ::Dry::Monads::Try::Mixin::Constructors
  extend ::Dry::Monads::Task::Mixin::Constructors

  class << self
    def Result(error, **options); end
    def [](*monads); end
    def included(base); end

    protected

    def registry=(registry); end

    private

    def all_loaded?; end
    def constructors; end
    def known_monads; end
    def load_monad(name); end
    def register_mixin(name, mod); end
    def registry; end
  end
end

class Dry::Monads::ConstructorNotAppliedError < ::NoMethodError
  def initialize(method_name, constructor_name); end
end

module Dry::Monads::ConversionStubs
  class << self
    def [](*method_names); end
  end
end

module Dry::Monads::ConversionStubs::Methods
  private

  def to_maybe; end
  def to_result; end
  def to_validated; end

  class << self
    def to_maybe; end
    def to_result; end
    def to_validated; end
  end
end

module Dry::Monads::Curry
  class << self
    def call(value); end
  end
end

module Dry::Monads::Do
  extend ::Dry::Monads::Do::Mixin
  include ::Dry::Monads::Do::All

  class << self
    def coerce_to_monad(monads); end
    def for(*methods); end
    def halt(result); end
    def included(base); end
    def method_visibility(mod, method); end
    def wrap_method(target, method, visibility); end
  end
end

module Dry::Monads::Do::All
  extend ::Dry::Monads::Do::All::InstanceMixin

  class << self
    def included(base); end
    def wrap_defined_methods(klass, target); end
  end
end

module Dry::Monads::Do::All::InstanceMixin
  def extended(object); end
end

class Dry::Monads::Do::All::MethodTracker < ::Module
  def initialize(wrappers); end

  def extend_object(target); end
  def wrap_method(target, method); end
  def wrappers; end
end

Dry::Monads::Do::DELEGATE = T.let(T.unsafe(nil), String)

class Dry::Monads::Do::Halt < ::StandardError
  def initialize(result); end

  def result; end
end

class Dry::Monads::Do::MethodTracker < ::Module
  def initialize(tracked_methods, base, wrapper); end
end

module Dry::Monads::Do::Mixin
  def bind(monads); end
  def call; end
end

Dry::Monads::Do::VISIBILITY_WORD = T.let(T.unsafe(nil), Hash)
Dry::Monads::EMPTY_ARRAY = T.let(T.unsafe(nil), Array)
Dry::Monads::EMPTY_HASH = T.let(T.unsafe(nil), Hash)
Dry::Monads::EMPTY_OPTS = T.let(T.unsafe(nil), Hash)
Dry::Monads::EMPTY_SET = T.let(T.unsafe(nil), Set)
Dry::Monads::EMPTY_STRING = T.let(T.unsafe(nil), String)
Dry::Monads::Failure = Dry::Monads::Result::Failure
Dry::Monads::IDENTITY = T.let(T.unsafe(nil), Proc)
Dry::Monads::Invalid = Dry::Monads::Validated::Invalid

class Dry::Monads::InvalidFailureTypeError < ::StandardError
  def initialize(failure); end
end

class Dry::Monads::Lazy < ::Dry::Monads::Task
  extend ::Dry::Core::Deprecations::Interface

  def complete?(*args, &block); end
  def evaluated?; end
  def force; end
  def force!; end
  def inspect; end
  def to_s; end
  def value!; end

  class << self
    def new(promise = T.unsafe(nil), &block); end
  end
end

module Dry::Monads::Lazy::Mixin
  include ::Dry::Monads::Lazy::Mixin::Constructors
end

module Dry::Monads::Lazy::Mixin::Constructors
  def Lazy(&block); end
end

Dry::Monads::Lazy::Mixin::Lazy = Dry::Monads::Lazy
Dry::Monads::Lazy::Mixin::Unit = T.let(T.unsafe(nil), Object)

class Dry::Monads::List
  include ::Dry::Core::Equalizer::Methods
  include ::Dry::Monads::Transformer
  extend ::Dry::Core::Deprecations::Interface

  def initialize(value, type = T.unsafe(nil)); end

  def +(other); end
  def apply(list = T.unsafe(nil), &block); end
  def bind(*args); end
  def collect; end
  def deconstruct; end
  def empty?; end
  def filter(&block); end
  def first; end
  def fmap(*args); end
  def fold_left(initial, &block); end
  def fold_right(initial); end
  def foldl(initial, &block); end
  def foldr(initial); end
  def head; end
  def inspect; end
  def last; end
  def map(&block); end
  def monad; end
  def reduce(initial, &block); end
  def reverse; end
  def select(&block); end
  def size; end
  def sort; end
  def tail; end
  def to_a; end
  def to_ary; end
  def to_monad; end
  def to_s; end
  def traverse(proc = T.unsafe(nil), &block); end
  def type; end
  def typed(type = T.unsafe(nil)); end
  def typed?; end
  def value; end

  private

  def coerce(other); end

  class << self
    def [](*values); end
    def coerce(value, type = T.unsafe(nil)); end
    def pure(value = T.unsafe(nil), type = T.unsafe(nil), &block); end
    def unfold(state, type = T.unsafe(nil)); end
  end
end

Dry::Monads::List::EMPTY = T.let(T.unsafe(nil), Dry::Monads::List)

class Dry::Monads::List::ListBuilder
  def initialize(type); end

  def [](*args); end
  def coerce(value); end
  def pure(val = T.unsafe(nil), &block); end
  def type; end

  class << self
    def [](*_arg0); end
  end
end

Dry::Monads::List::Maybe = T.let(T.unsafe(nil), Dry::Monads::List::ListBuilder)

module Dry::Monads::List::Mixin
  def List(value); end
end

Dry::Monads::List::Mixin::L = Dry::Monads::List
Dry::Monads::List::Mixin::List = Dry::Monads::List
Dry::Monads::List::Result = T.let(T.unsafe(nil), Dry::Monads::List::ListBuilder)
Dry::Monads::List::Task = T.let(T.unsafe(nil), Dry::Monads::List::ListBuilder)
Dry::Monads::List::Try = T.let(T.unsafe(nil), Dry::Monads::List::ListBuilder)
Dry::Monads::List::Validated = T.let(T.unsafe(nil), Dry::Monads::List::ListBuilder)

class Dry::Monads::Maybe
  extend T::Generic
  include ::Dry::Monads::Transformer
  extend ::Dry::Core::Constants
  extend ::Dry::Core::ClassAttributes

  # Elem = type_member

  def failure?; end
  def monad; end
  def none?; end
  def some?; end
  def success?; end
  def to_maybe; end
  def to_monad; end

  class << self
    def coerce(value); end
    def lift(*args, &block); end
    def pure(value = T.unsafe(nil), &block); end
    def to_proc; end
  end
end

module Dry::Monads::Maybe::Hash
  class << self
    def all(hash, trace = T.unsafe(nil)); end
    def filter(hash); end
  end
end

module Dry::Monads::Maybe::Mixin
  include ::Dry::Monads::Maybe::Mixin::Constructors
end

module Dry::Monads::Maybe::Mixin::Constructors
  def Maybe(value); end
  def None; end
  def Some(value = T.unsafe(nil), &block); end
end

Dry::Monads::Maybe::Mixin::Maybe = Dry::Monads::Maybe
Dry::Monads::Maybe::Mixin::None = Dry::Monads::Maybe::None
Dry::Monads::Maybe::Mixin::Some = Dry::Monads::Maybe::Some

class Dry::Monads::Maybe::None < ::Dry::Monads::Maybe
  include ::Dry::Monads::RightBiased::Left

  def initialize(trace = T.unsafe(nil)); end

  def ==(other); end
  def deconstruct; end
  def eql?(other); end
  def filter(_ = T.unsafe(nil)); end
  def hash; end
  def inspect; end
  def maybe(*_arg0); end
  def or(*args); end
  def or_fmap(*args, &block); end
  def to_result(fail = T.unsafe(nil)); end
  def to_s; end
  def trace; end

  class << self
    def instance; end

    private

    def method_missing(m, *_arg1); end
  end
end

class Dry::Monads::Maybe::Some < ::Dry::Monads::Maybe
  include ::Dry::Core::Equalizer::Methods
  include ::Dry::Monads::RightBiased::Right

  def initialize(value = T.unsafe(nil)); end

  def filter(with = T.unsafe(nil), &block); end
  def fmap(*args, &block); end
  def inspect; end
  def maybe(*args, &block); end
  def to_result(_fail = T.unsafe(nil)); end
  def to_s; end

  class << self
    def [](*value); end
    def call(*_arg0); end
    def to_proc; end
  end
end

Dry::Monads::None = Dry::Monads::Maybe::None

class Dry::Monads::Result
  extend T::Generic
  include ::Dry::Monads::Transformer

  # FailureType = type_member
  # SuccessType = type_member

  def failure; end
  def monad; end
  def success; end
  def to_monad; end
  def to_result; end

  class << self
    def pure(value = T.unsafe(nil), &block); end
  end
end

class Dry::Monads::Result::Failure < ::Dry::Monads::Result
  include ::Dry::Monads::RightBiased::Left
  include ::Dry::Core::Equalizer::Methods

  def initialize(value, trace = T.unsafe(nil)); end

  def ===(other); end
  def alt_map(proc = T.unsafe(nil), &block); end
  def either(_, g); end
  def failure; end
  def failure?; end
  def flip; end
  def inspect; end
  def or(*args); end
  def or_fmap(*args, &block); end
  def result(f, _); end
  def success?; end
  def to_maybe; end
  def to_s; end
  def to_validated; end
  def trace; end
  def value_or(val = T.unsafe(nil)); end

  class << self
    def [](*value); end
    def call(*_arg0); end
    def to_proc; end
  end
end

class Dry::Monads::Result::Fixed < ::Module
  def initialize(error, **_options); end

  private

  def included(base); end

  class << self
    def [](error, **options); end
  end
end

module Dry::Monads::Result::Mixin
  include ::Dry::Monads::Result::Mixin::Constructors
end

module Dry::Monads::Result::Mixin::Constructors
  def Failure(value = T.unsafe(nil), &block); end
  def Success(value = T.unsafe(nil), &block); end
end

Dry::Monads::Result::Mixin::Failure = Dry::Monads::Result::Failure
Dry::Monads::Result::Mixin::Success = Dry::Monads::Result::Success

class Dry::Monads::Result::Success < ::Dry::Monads::Result
  include ::Dry::Monads::RightBiased::Right
  include ::Dry::Core::Equalizer::Methods
  extend ::Dry::Core::Deprecations::Interface

  def initialize(value); end

  def alt_map(_ = T.unsafe(nil)); end
  def either(f, _); end
  def failure?; end
  def flip; end
  def fmap(*args, &block); end
  def inspect; end
  def result(_, f); end
  def success; end
  def success?; end
  def to_maybe; end
  def to_s; end
  def to_validated; end

  class << self
    def [](*value); end
    def call(*_arg0); end
    def to_proc; end
  end
end

module Dry::Monads::RightBiased; end

module Dry::Monads::RightBiased::Left
  def and(_); end
  def apply(*_arg0); end
  def bind(*_arg0); end
  def deconstruct; end
  def deconstruct_keys(keys); end
  def discard; end
  def flatten; end
  def fmap(*_arg0); end
  def or(*_arg0); end
  def or_fmap(*_arg0); end
  def tee(*_arg0); end
  def value!; end
  def value_or(val = T.unsafe(nil)); end
  def |(alt); end

  class << self
    def trace_caller; end
  end
end

module Dry::Monads::RightBiased::Right
  def ===(other); end
  def and(mb); end
  def apply(val = T.unsafe(nil), &block); end
  def bind(*args, **kwargs); end
  def deconstruct; end
  def deconstruct_keys(keys); end
  def discard; end
  def flatten; end
  def fmap(*_arg0); end
  def or(*_arg0); end
  def or_fmap(*_arg0); end
  def tee(*args, &block); end
  def value!; end
  def value_or(_val = T.unsafe(nil)); end
  def |(_alt); end

  private

  def curry; end
  def destructure(value); end

  class << self
    def included(m); end
  end
end

Dry::Monads::Self = T.let(T.unsafe(nil), Proc)
Dry::Monads::Some = Dry::Monads::Maybe::Some
module Dry::Monads::Sorbet; end
Dry::Monads::Sorbet::VERSION = T.let(T.unsafe(nil), String)
Dry::Monads::Success = Dry::Monads::Result::Success

class Dry::Monads::Task
  def initialize(promise); end

  def ==(other); end
  def apply(val = T.unsafe(nil), &block); end
  def bind(&block); end
  def complete?; end
  def discard; end
  def fmap(&block); end
  def inspect; end
  def monad; end
  def or(&block); end
  def or_fmap(&block); end
  def then(&block); end
  def to_maybe; end
  def to_monad; end
  def to_result; end
  def to_s; end
  def value!; end
  def value_or(&block); end
  def wait(timeout = T.unsafe(nil)); end

  protected

  def promise; end

  private

  def compare_promises(x, y); end
  def curry(value); end

  class << self
    def [](executor, &block); end
    def failed(exc); end
    def new(promise = T.unsafe(nil), &block); end
    def pure(value = T.unsafe(nil), &block); end
  end
end

module Dry::Monads::Task::Mixin
  include ::Dry::Monads::Task::Mixin::Constructors

  class << self
    def [](executor); end
  end
end

module Dry::Monads::Task::Mixin::Constructors
  def Task(&block); end
end

Dry::Monads::Task::Mixin::Task = Dry::Monads::Task
Dry::Monads::Task::Mixin::Unit = T.let(T.unsafe(nil), Object)
class Dry::Monads::Task::Promise < ::Concurrent::Promise; end

module Dry::Monads::Transformer
  def fmap2(*args); end
  def fmap3(*args); end
end

Dry::Monads::Traverse = T.let(T.unsafe(nil), Hash)

class Dry::Monads::Try
  def error?; end
  def exception; end
  def failure?; end
  def success?; end
  def to_monad; end
  def value?; end

  class << self
    def [](*exceptions, &block); end
    def lift(*args, &block); end
    def pure(value = T.unsafe(nil), exceptions = T.unsafe(nil), &block); end
    def run(exceptions, f); end
  end
end

Dry::Monads::Try::DEFAULT_EXCEPTIONS = T.let(T.unsafe(nil), Array)

class Dry::Monads::Try::Error < ::Dry::Monads::Try
  include ::Dry::Core::Equalizer::Methods
  include ::Dry::Monads::RightBiased::Left

  def initialize(exception); end

  def ===(other); end
  def inspect; end
  def or(*args); end
  def recover(*errors); end
  def to_maybe; end
  def to_result; end
  def to_s; end

  class << self
    def call(*_arg0); end
  end
end

module Dry::Monads::Try::Mixin
  include ::Dry::Monads::Try::Mixin::Constructors

  def Error(error = T.unsafe(nil), &block); end
  def Value(value = T.unsafe(nil), exceptions = T.unsafe(nil), &block); end
end

module Dry::Monads::Try::Mixin::Constructors
  def Try(*exceptions, &f); end
end

Dry::Monads::Try::Mixin::Try = Dry::Monads::Try

class Dry::Monads::Try::Value < ::Dry::Monads::Try
  include ::Dry::Core::Equalizer::Methods
  include ::Dry::Monads::RightBiased::Right

  def initialize(exceptions, value); end

  def bind(*args); end
  def catchable; end
  def fmap(*args, &block); end
  def inspect; end
  def recover(*_errors); end
  def to_maybe; end
  def to_result; end
  def to_s; end

  private

  def bind_call(*args, **kwargs); end

  class << self
    def call(*_arg0); end
    def to_proc; end
  end
end

Dry::Monads::Undefined = T.let(T.unsafe(nil), Object)
Dry::Monads::Unit = T.let(T.unsafe(nil), Object)

class Dry::Monads::UnwrapError < ::StandardError
  def initialize(receiver); end

  def receiver; end
end

Dry::Monads::Valid = Dry::Monads::Validated::Valid

class Dry::Monads::Validated
  def bind(*_arg0); end
  def to_monad; end

  class << self
    def pure(value = T.unsafe(nil), &block); end
  end
end

class Dry::Monads::Validated::Invalid < ::Dry::Monads::Validated
  include ::Dry::Core::Equalizer::Methods

  def initialize(error, trace = T.unsafe(nil)); end

  def ===(other); end
  def alt_map(proc = T.unsafe(nil), &block); end
  def apply(val = T.unsafe(nil), &block); end
  def error; end
  def fmap(_ = T.unsafe(nil)); end
  def inspect; end
  def or(proc = T.unsafe(nil), &block); end
  def to_maybe; end
  def to_result; end
  def to_s; end
  def trace; end
end

module Dry::Monads::Validated::Mixin
  include ::Dry::Monads::Validated::Mixin::Constructors
end

module Dry::Monads::Validated::Mixin::Constructors
  def Invalid(value = T.unsafe(nil), &block); end
  def Valid(value = T.unsafe(nil), &block); end
end

Dry::Monads::Validated::Mixin::Invalid = Dry::Monads::Validated::Invalid
Dry::Monads::Validated::Mixin::Valid = Dry::Monads::Validated::Valid

class Dry::Monads::Validated::Valid < ::Dry::Monads::Validated
  include ::Dry::Core::Equalizer::Methods

  def initialize(value); end

  def ===(other); end
  def alt_map(_ = T.unsafe(nil)); end
  def apply(val = T.unsafe(nil), &block); end
  def fmap(proc = T.unsafe(nil), &block); end
  def inspect; end
  def or(_ = T.unsafe(nil)); end
  def to_maybe; end
  def to_result; end
  def to_s; end
  def value!; end
end
