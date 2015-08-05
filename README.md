# new_relic_rest_client

This is a ruby client to access the new relic API.
It's pretty simple to use.

First set your api key like so:

```ruby
NRRC.api_key = File.open("api_key", "r") { |file| file.read }
```

Then make a request for data.

``` ruby
puts NRRC::Routes::Applications.list 
puts NRRC::Routes::Applications.show "23423423"
```


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'new_relic_rest_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install new_relic_rest_client

## Usage

TODO: Write usage instructions here

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/new_relic_rest_client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
