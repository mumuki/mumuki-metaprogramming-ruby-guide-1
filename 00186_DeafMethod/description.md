We want to be able to define methods using a ```deaf``` keyword instead of ```def```. Such methods do not have any body, since their implementation is empty, and take no arguments. 

For example:

```ruby
class Foo
  deaf :foo
end
```
should be equivalent to:

```ruby
class Foo
  def foo
  end
end
```
  