# OmniAuth Dailymotion [![Build Status](https://secure.travis-ci.org/slainer68/omniauth-dailymotion.png?branch=master)][travis] [![Dependency Status](https://gemnasium.com/slainer68/omniauth-dailymotion.png?travis)][gemnasium]
[travis]: http://travis-ci.org/slainer68/omniauth-dailymotion
[gemnasium]: https://gemnasium.com/slainer68/omniauth-dailymotion

This gem contains the Dailymotion strategy for OmniAuth 1.0.

Note : this gem is unofficial and is not endorsed in any way by Dailymotion.

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-dailymotion', '~> 1.0.0'
```

Then `bundle install`.

## Basic Usage

```ruby
use OmniAuth::Builder do
  provider :dailymotion, ENV['DAILYMOTION_CLIENT_ID'], ENV['DAILYMOTION_SECRET']
end
```

## Supported Flows

Supports the Server-side Flow as described in the the [Dailymotion Data API
docs](http://www.dailymotion.com/doc/api/authentication.html).

## License

Copyright (c) 2012 Nicolas Blanco

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
