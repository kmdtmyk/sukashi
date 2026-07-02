# Sukashi
Short description and motivation.


## Installation
Add this line to your application's Gemfile:

```ruby
gem 'sukashi', git: 'https://github.com/kmdtmyk/sukashi', ref: '<commit_hash>'
```

And then execute:
```bash
$ bundle install
$ rails g sukashi:install
```

## Usage
How to use my plugin.

```ruby
class ExampleController < ApplicationController

  def index
    Sukashi.request.text = 'request単位で設定したい文字列'
  end

end
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
