We want to implement an `Interceptor` mixin that assists in building interceptors. Classes that include such mixin obtain the following:

* a constructor that takes the object to be intercepted
* the following macros: `before`, `after`, `around`. 

Example of inclusion:

```ruby
class Foo
  extend Interceptor

  before :foo do |x|
    puts x
  end

  after :bar do |x, y|
     puts x
     puts y
  end

  around :baz do |x|
    print x
    r = proceed
    puts r
  end
end
```

Example of usage:

```ruby
class Baz
  def foo(x)    
     puts "foo"
  end
  def bar(x, y)
     puts "bar"
  end
  def baz(x)
    puts "baz"
  end  
end

decoree = Baz.new
decorator = Foo.new(decoree)
decorator.bar("hello", "world") #should print "bar\nhello\nworld\n"
```