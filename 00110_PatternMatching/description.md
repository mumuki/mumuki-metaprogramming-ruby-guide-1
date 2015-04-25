Implement pattern matching for regular expressions, binding regex groups

```ruby
"foo bar".matches do
  on /(.*)_(.*)/ do |foo, bar|
    #....
  end
  on /(.*)-(.*)-(.*)/ do |foo, bar, baz|
    #....
  end
  fallback do
    #....
  end
end
```