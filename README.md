# Foreman::Export::Eye

Export foreman config to eye (https://github.com/kostya/eye).

## Installation

Add this line to your application's Gemfile:

    gem 'foreman-export-eye'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install foreman-export-eye

## Usage

We have the following export command in capistrano:

```ruby
bundle exec foreman export eye #{eye_path} -a #{application} -t #{latest_release}/config -l #{shared_path}/log -u #{user} -e #{latest_release}/app_env
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/foreman-export-eye/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
