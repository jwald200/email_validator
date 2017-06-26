# Email Validator

That are a lot of rules about what is considered a valid email.
checkout [wikipedia](https://en.wikipedia.org/wiki/Email_address)

Here is what this gem considers valid
- Local-part (mailbox)
  - may contain alphanumeric chars + special chars `!#$%&'*+-/=?^_`{|}~;`
  - may not contain those chars `(),:;<>@[\]` and spaces
- Domain name
  - may contain alphanumeric chars and hyphens
  - must have a dod and only one.
  - must have at least 2 alphabet chars for the top-level domain. for example (co, com, org)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'email_validator', github: 'jwald200/email_validator'
```

And then execute:

    $ bundle

## Usage

add the following line to your app
require 'email_validator'

This will give you access to `#valid_email?(email_address)`
## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/email_validator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
