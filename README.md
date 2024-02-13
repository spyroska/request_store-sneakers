# RequestStore::Sneakers
Provides an easy integration between [RequestStore](https://github.com/steveklabnik/request_store) and [sneakers](https://github.com/jondot/sneakers).

RequestStore allows you to easily create threadsafe code and this middleware for sneakers brings that functionality to sneakers workers.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'request_store-sneakers', '~> 0.1'
```

And then execute:

    $ bundle install

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install request_store-sneakers

## Usage
Add the middleware into the stack:

```ruby
RequestStore::Sneakers.add_custom_middleware!
```

## Development
After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing
Bug reports and pull requests are welcome on GitHub at https://github.com/spyroska/request_store-sneakers. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
