# Geometry

This gem computes the linear distance between two points in a cartesian plane.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'geometry'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install geometry

## Test Instructions

Execute the command `bundle exec rspec` to test the gem.

## Usage

Point Entity:
To use the Point class import it in the required file. Then make the object like:<br>
`<variable_name> = Geometry::Point.new(<value of x coordinate>, <value of y coordinate>)`

Line Entity: To use the line entity import it in the required file. Then make the object like:<br>
`<variable_name> = Line(point_one, point_two)`

NOTE: point_one, point_two are objects of point class.

To calculate the length of a line call length property on the object like:<br>
`<line_object>.get_length`

To calculate distance between two points using compute function:<br>
`<point_object_one>.compute(<point_object_two>)`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/subash2121/bios-01.
