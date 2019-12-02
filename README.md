![dry-monads-sorbet](https://user-images.githubusercontent.com/2643026/69986703-dfc68200-1535-11ea-9035-38ecbdb67138.png)

# Dry Monads Sorbet ![CI Badge](https://github.com/tricycle/dry-monads-sorbet/workflows/RSpec%20Test%20Suite/badge.svg)

Sorbet type hints for Dry::Monads.

## Install

`gem 'dry-monads-sorbet'`

## Usage

```ruby
require 'dry/monads/sorbet'

class MyClass
  extend T::Sig

  sig{returns(Dry::Monads::Sorbet[StandardError, String])}
  def my_method
  ...
```
