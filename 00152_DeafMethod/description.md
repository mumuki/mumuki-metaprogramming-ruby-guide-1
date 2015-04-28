Allow to define methods using a deaf keyword instead of def. Such methods does not have any body, since their implementation is empty, and take no arguments.

Example

```
class Foo
  deaf :foo
end
```

should be equivalent to:

```
class Foo
  def foo
  end
end
```