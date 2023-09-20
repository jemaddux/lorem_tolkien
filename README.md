# LoremTolkien

[![Build Status](https://travis-ci.org/jemaddux/lorem_tolkien.svg?branch=master)](https://travis-ci.org/jemaddux/lorem_tolkien)

[![Test Coverage](https://codeclimate.com/github/jemaddux/lorem_tolkien/badges/coverage.svg)](https://codeclimate.com/github/jemaddux/lorem_tolkien)

[On RubyGems.org](https://rubygems.org/gems/lorem_tolkien)

## Installation

Add this line to your application's Gemfile:

    gem 'lorem_tolkien'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install lorem_tolkien

## Building

    $ gem build lorem_tolkien.gemspec 

    $ gem push lorem_tolkien-0.1.2.gem

## Usage

LoremTolkien.sentence
  => "Do you wish me a good morning, or mean that it is a good morning whether I want it or not; or that you feel good this morning; or that it is a morning to be good on?"

LoremTolkien.sentences(5)
  => "Do you wish me a good morning, or mean that it is a good morning whether I want it or not; or that you feel good this morning; or that it is a morning to be good on? In a hole in the ground there lived a hobbit. There is nothing like looking, if you want to find something. You certainly usually find something, if you look, but it is not always quite the something you were after. It does not do to leave a live dragon out of your calculations, if you live near him."

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
