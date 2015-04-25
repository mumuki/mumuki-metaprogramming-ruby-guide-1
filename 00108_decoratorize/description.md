class Foo
  decoratorize

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