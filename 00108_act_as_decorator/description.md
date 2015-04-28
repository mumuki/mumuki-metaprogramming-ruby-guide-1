We want to implement an `act_as_decorator` method that allows a class to easily implement a decorator or proxy, that wraps calls to a decorated instance. For example:

```Ruby
class Foo
  act_as_decorator

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

A decorator declared that way should be able t be used in the following way:

```Ruby
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

