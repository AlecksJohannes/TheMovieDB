# TheMovieDb [![Build Status](https://travis-ci.org/AlecksJohannes/TheMovieDB.svg?branch=master)](https://travis-ci.org/AlecksJohannes/TheMovieDB)  [![Maintainability](https://api.codeclimate.com/v1/badges/fcdc7d342f864dc59b93/maintainability)](https://codeclimate.com/github/AlecksJohannes/TheMovieDB/maintainability)



TheMovieDB is a Ruby wrapper for themoviedb.org.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'the_movie_db'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install the_movie_db

## Usage
  #### Basic Usage:
  The basic usage of TheMovieDB gem (fetching the top rated movies)
  ```
  @client = TheMovieDb::Client.new('YOUR API KEY')
  response = @client.top_rated
  response.success? => true or false
  ```
  
  #### Custom Params
  TheMovieDB gem also support custom params, for more information please visit this [link](https://developers.themoviedb.org/3/movies). For instance,
  ```
  @client.top_rated({
    page: 2,
    language: 'Vietnamese'
  })
  ```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/the_movie_db. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the TheMovieDb project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/the_movie_db/blob/master/CODE_OF_CONDUCT.md).
