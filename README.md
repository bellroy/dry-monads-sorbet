![dry-monads-sorbet](https://user-images.githubusercontent.com/2643026/69986703-dfc68200-1535-11ea-9035-38ecbdb67138.png)

# Dry Monads Sorbet ![CI Badge](https://github.com/tricycle/dry-monads-sorbet/workflows/RSpec%20Test%20Suite/badge.svg)

Sorbet type hints for Dry::Monads.

This gem is very small, it opens up the `Dry::Monads::Result` and `Dry::Monads::Maybe` classes to add type members
that are subsequently referred to in a bundled `.rbi` file for the `dry-monads` gem.

The bundled rbi annotations are installed/updated via a rake task included in the gem.

## Installation

Add the gem to your Gemfile:

`gem 'dry-monads-sorbet'`

### Copying the bundled RBI

You must copy in the bundled `.rbi` file that this gem maintains to add type annotations to your own project to type check your usage of `Dry::Monads`.

Following in the footsteps of `sorbet-rails` we've extracted this process to a rake task.

### In a Rails project:

The rake task that copies the bundled `.rbi` files into your project should already be loaded. You can run it by entering:

```bash
bundle exec rake dry_monads_sorbet:update_rbi
```

### Outside of Rails projects:

Include the `Rakefile` in your own projects `Rakefile` to get access to the rbi update command:

```ruby
require 'dry-monads-sorbet'

spec = Gem::Specification.find_by_name 'dry-monads-sorbet'
rakefile = "#{spec.gem_dir}/lib/dry-monads-sorbet/Rakefile"
load rakefile
```

After including the Rakefile you should then have access to the task as described in the Rails project section.

## Usage

Usage is fairly simple, just annotate your methods as follows:

```ruby
require 'dry/monads/sorbet'

class MyLoginService
  extend T::Sig

  sig{params(username: String).returns(Dry::Monads::Result[StandardError, String])}
  def check_username(username)
    case username
    when 'samuelgiles93'
      Dry::Monads::Success('Hi Sam!')
    else
      Dry::Monads::Failure(
        StandardError.new('Unauthorised')
      )
    end
  end

  sig{params(username: String).returns(Dry::Monads::Maybe[Integer])}
  def find_fullname(username)
    case username
    when 'samuelgiles93'
      Dry::Monads::Some('Samuel Giles')
    else
      Dry::Monads::None()
    end
  end
end
```

With the type annotations in place you'll get type errors when you attempt to say call a method that doesn't exist on the `Some` of a `Maybe` or the `Success` of a `Result`.
