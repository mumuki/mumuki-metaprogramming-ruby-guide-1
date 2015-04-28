We want to implement a way to define multimethods, using the keyword `multidef`, which accepts a selector, a list of types, and a block with the same arity as the types list.  For example:

```ruby
class Foo
   multidef :bar, [Baz, FooBar] do |x, y| 
      1
   end

   multidef :bar, [FooBaz, Baz] do |x, y|
     2
   end
end
```

It should behave like the following:

```ruby
Foo.new.bar(Baz.new, FooBar.new) #should return 1
Foo.new.bar(FooBaz.new, Baz.new) #should return 2
Foo.new.bar(FooBaz.new, 2) #should fail, since there is no overloaded version of method bar for Number as second argument
```