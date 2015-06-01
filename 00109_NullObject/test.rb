describe 'null object' do
   
    it { expect(null.foo).to be null  }
    it { expect(null.bar).to be null  }
    it { expect(null.baz(3)).to be null  }
    it { expect(null.to_s).to_not be null  }
    
end