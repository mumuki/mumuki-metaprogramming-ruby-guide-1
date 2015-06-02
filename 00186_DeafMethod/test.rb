class FooBar
end

module AModule
end


describe "DeafMethod" do

  it "should be possible to call deaf  within a class" do
     FooBar.class_eval { deaf :foo  } 
  end

  it "should be possible to call deaf  within a module" do
     AModule.module_eval { deaf :foo  } 
  end

  it "deaf define instance methods" do
     FooBar.class_eval { deaf :bar  } 
     FooBar.new.respond_to? :bar
  end

  it "deaf methods return nil" do
     FooBar.class_eval { deaf :foobar  } 
     expect(FooBar.new.foobar).to be nil
  end

  
end
