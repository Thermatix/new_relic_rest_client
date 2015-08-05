# new_relic_rest_client

This is a ruby client to access the new relic API.



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

First set your api key like so:

```ruby        
NRRC.api_key = "23423423948239040jf0asdfjsdjifnasdkhlbashbfasfb" 
```

Then make a request for data.

``` ruby
puts NRRC::Routes::Applications.list 
puts NRRC::Routes::Applications.show "23423423"
```

you can also pass in params

```ruby
puts NRRC::Routes::Applications.list({"filter[ids]" => ["23423423"]})
```

It does support updating,creating and deleting in the same way

##Function listing

Here's the list of functions and there arguments, grouped by route.

### Applications

```ruby
NRRC::Routes::Applications
    list params={}
    show app_id
    update app_id, data={}
    delete app_id
    metric_names app_id, params={}
    metric_data app_id, params={}
    event_list app_id, params={}
    event_show app_id,event_id
    event_close app_id, event_id
    create_event app_id, data={}               
    downtime_list app_id, params={}
    downtime_show app_id,event_id
```

### Application Hosts

```ruby
NRRC::Routes::Application_Hosts
    list app_id, params={}
    show app_id, host_id
    metric_names app_id, host_id, params={}
    metric_data app_id, host_id, params={}
```

### Application Instances

```ruby
NRRC::Routes::Application_Instances
    list app_id, params={}
    show app_id, instance_id
    metric_names app_id, instance_id, params={}
    metric_data app_id, instance_id, params={}
```

### Mobile Applications

```ruby
NRRC::Routes::Mobile_applications
    list params={}
    show app_id
    metric_names app_id, params={}
    metric_data app_id, params={}
```

### Browser Applications

```ruby
NRRC::Routes::Browser_Applications
    list params={}
    create data={}
```

### Key Transactions

```ruby
NRRC::Routes::Key_Transactions
    list app_id, params={}
    show app_id
```

### Servers

```ruby
NRRC::Routes::Servers
    list params={}
    show app_id
    update app_id, data={}
    delete app_id
    metric_names app_id, params={}
    metric_data app_id, params={}
```

### Notification Channels

```ruby
NRRC::Routes::Notification_Channels
    list params={}
    show app_id
```

### Users

```ruby
NRRC::Routes::Servers
    list params={}
    show app_id
    reset_password user_id
```

### Plugins

```ruby
NRRC::Routes::Plugins
    list params={}
    show plugin_id
```

### Components

```ruby
NRRC::Routes::Components
    list params={}
    show component_id
```

### Labels

```ruby
NRRC::Routes::Labels
 list params={}
 create  data
 delete label_id
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/new_relic_rest_client/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
