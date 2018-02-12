# Jekyll Dates

Jekyll Dates provides a few useful date methods, surfacing around the current time, not only will it give you the current time, but the current min, sec, hour, month, day, and even a list of months, abbreviated months, the epoch, and other useful stuff.

## Usage

```ruby
group :jekyll_plugins
  gem "jekyll-dates", {
    git: "https://github.com/envygeeks/jekyll-dates"
  }
end
```

```html
{{ date }}
{{ date.unix }}
{{ date.year }}
{{ date.month }}
{{ date.epoch }}
{{ date.hour }}
{{ date.day }}
{{ date.sec }}

<-- Also works with months_abbr -->
{% for month in date.months %}
  {{ month }}
{% end %}
```
