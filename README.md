# LogicOr

[![Build Status](https://travis-ci.com/mberlanda/logic_or.svg?branch=master)](https://travis-ci.com/mberlanda/logic_or)[![Gem Version](https://badge.fury.io/rb/logic_or.svg)](https://badge.fury.io/rb/logic_or)

The purpose of `LogicOr` gem is to provide the same behavior as *Logical Defined-Or operator* in perl:
<https://perldoc.perl.org/perlop.html#Logical-Defined-Or>

> Although it has no direct equivalent in C, Perl's `//` operator is related to its C-style "or". In fact, it's exactly the same as `||`, except that it tests the left hand side's definedness instead of its truth.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'logic_or'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install logic_or

## Usage

Whilst `||` and `&&` operators will consider `nil` and `false` both as undefined, `lor` will allow
to make a distinction between them. This may be very tricky when assignin variables with `||=` or
`&&=`.

```rb
    it { expect(nil.lor('a')).to eq('a') }
    it { expect(nil.lor(1)).to eq(1) }
    it { expect(nil.lor([])).to eq([]) }
    it { expect(nil.lor(false)).to eq(false) }

    it { expect(false.lor('a')).to eq(false) }
    it { expect(false.lor(1)).to eq(false) }
    it { expect(false.lor([])).to eq(false) }
    it { expect(false.lor(true)).to eq(false) }
```

In v0.0.1 only the `lor` method is provided. As a next improvement it would be interesting to provide
as well a well to assign like `lor!` or `lor=`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/mberlanda/logic_or. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the LogicOr project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/mberlanda/logic_or/blob/master/CODE_OF_CONDUCT.md).
