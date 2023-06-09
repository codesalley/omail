# Omail

Rails development mail intercepter. This gem intercept all your emails and save them in a dir for previewing. No need to get confirmation emails sent out for a confirmation in development. Mails can be accessed easily with a desktop client


## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add omail

If bundler is not being used to manage dependencies, install the gem by executing:

```ruby
  group :development do
    gem "omail"
  end
```
and `initialize` using 


    $ rails generator omail:install

this adds `config/initializers/omail.rb` and `config/initializers/omail.rb` to `.gitignore`

## Usage

After install gem, download a client desktop appfor your operating system 

[ Macos ](https://github.com/codesalley/omail/releases/download/v0.4.3/Omail.Client.dmg)

[Windows -- soon](#) 

[Linux -- soon](#)


## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake respec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/codesalley/omail.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
