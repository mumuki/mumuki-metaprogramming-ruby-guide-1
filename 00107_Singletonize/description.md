Allow any class to understand a `singletonize` message, which adds to it a `instance` method, which returns always the same instance of the class.

Example

```ruby
class Foo
  singletonize

  #... rest of definitions
end

Foo.instance == Foo.instance #should be true
```