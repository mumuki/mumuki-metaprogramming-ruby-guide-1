class MyClass
    singletonize
end

describe "singletonize" do
    it { expect(Class.respond_to? :singletonize) }
    it { expect(MyClass.respond_to? :instance) }
    it { expect(MyClass.instance).to be MyClass.instance }
end