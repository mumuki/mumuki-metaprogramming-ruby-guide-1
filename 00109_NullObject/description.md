Define  an object `null` that answers itself whenever a message  is send to it. Example:

```ruby
> null.foo
=> null
> null.do_something! 4
=> null
```

**Note**: methods inherited from `Object` should preserve their original behaviour
