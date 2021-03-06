# Administrate::Field::Money

[![Code Climate](https://codeclimate.com/github/zooppa/administrate-field-money/badges/gpa.svg)](https://codeclimate.com/github/zooppa/administrate-field-money)
[![Build Status](https://semaphoreci.com/api/v1/zooppa/administrate-field-money/branches/master/badge.svg)](https://semaphoreci.com/zooppa/administrate-field-money)

A plugin to deal with money in [Administrate], with the help of [Money] gem.

**Attribute must be in cents**.

![Demo](https://raw.githubusercontent.com/zooppa/administrate-field-money/master/demo.gif)

## Usage

Add it to your `Gemfile`:

```ruby
gem 'administrate-field-money', '~> 0.1.0'
```

Run:

```bash
$ bundle install
```

Add to your `FooDashboard`:

```ruby
ATTRIBUTE_TYPES = {
  bar: Field::Money.with_options(
    code: 'USD', # EUR, CAD, GBP, AUD, JPY, ...
    symbol: '$',
    delimiter: ',',
    separator: '.'
  ),
}.freeze
```

The field will figure out the appropriate thousand separator and decimal delimiter for the unit.

## About

Administrate::Field::Money is maintained by [Zooppa].

[administrate]: https://github.com/thoughtbot/administrate
[money]: https://github.com/RubyMoney/money
[zooppa]: https://www.zooppa.com/
