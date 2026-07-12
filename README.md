# Sukashi
Short description and motivation.


## Installation

```ruby
gem 'sukashi', git: 'https://github.com/kmdtmyk/sukashi', ref: '<commit_hash>'
```

```bash
$ bundle install
```

## Usage

```bash
$ rails g sukashi:install
```

```ruby
# config/initializers/sukashi.rb

Sukashi.config.text = '全ての画面に表示したい文字列'
```

```ruby
class ExampleController < ApplicationController

  def index
    Sukashi.request_scope.text = 'request単位で設定したい文字列'
  end

end
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
