# Guard::AnnotateGem
Guard plugin for [annotate_gem](https://github.com/ivantsepp/annotate_gem) gem.
Guard::AnnotateGem automatically annotate your gems on update.

## Installation

Please ensure you have [Guard](http://github.com/guard/guard) installed before you continue.

Add the following to your application's Gemfile:
```ruby
group :development do
  gem 'guard-annotate_gem', require: false
end
```

And then execute:
```
$ bundle
```

Add Guard::AnnotateGem to your Guardfile by running:
```
$ guard init annotate_gem
```

Alternatively, install it without bundler:
```
$ gem install guard-annotate_gem
```

## Usage

Please refer to the [Guard usage doc](http://github.com/guard/guard#readme)

## Example Guardfile

```ruby
guard 'annotate_gem', inline: true do
  watch('Gemfile.lock')
end
```

## Options

### List of available options

```ruby
inline: true              # put comments inline, instead of an above the gem line
```

## Contributing

1. Fork it ( https://github.com/unodor/guard-annotate_gem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
