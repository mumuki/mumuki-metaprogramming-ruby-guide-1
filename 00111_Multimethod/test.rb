class Foo
   multidef :bar, [Baz, FooBar] do |x, y| 
      1
   end

   multidef :bar, [FooBaz, Baz] do |x, y|
     2
   end
end

class Baz
end

class FooBar
end

class FooBaz
end

describe "multimethod" do 
    let(:a_foo) { Foo.new }
    let(:a_baz) { Baz.new }
    let(:a_foo_bar){ FooBar.new }
    let(:a_foo_baz){ FooBaz.new }

    it { expect(a_foo.bar(a_baz, a_foo_bar)).to eq 1 
    it { expect(a_foo.bar(a_baz, a_baz)).to eq 2
    it { expect { a_foo.bar(a_foo_baz, 2) }.to raise_error }
end