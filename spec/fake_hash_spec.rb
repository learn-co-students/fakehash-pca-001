describe FakeHashWrapper do
  describe '#[]()' do
    it 'allows you to set values in the hash' do
      fake = FakeHashWrapper.new
      fake[:blake] = 'the best'
      expect(fake[:blake]).to eq('the best')
    end

    it 'returns values regardless of whether they are strings or symbols' do
      fake = FakeHashWrapper.new
      fake[:blake] = 'the best'
      fake['anisha'] = 'awesome'
      expect(fake['blake']).to eq('the best')
      expect(fake[:anisha]).to eq('awesome')
    end
  end

  describe '#keys' do
    it 'returns all the keys in the hash in a descending alphabetized array' do
      fake = FakeHashWrapper.new
      fake[:giraffes] = 'cute'
      fake[:cats] = 'the best'
      fake[:dogs] = 'also the best'
      expect(fake.keys).to eq([:giraffes, :dogs, :cats])
    end
  end

  describe '#first_letter' do
    it 'returns all the values that have keys beginning with a certain letter' do
      fake = FakeHashWrapper.new
      fake[:apples] = 'wormy'
      fake[:anteaters] = 'i like them'
      fake[:balls] = 'why'
      expect(fake.first_letter('a').class).to eq(Array)
      expect(fake.first_letter('a').length).to eq(2)
      ['wormy', 'i like them'].each do |string|
        expect(fake.first_letter('a')).to include(string)
      end
    end
  end

  describe '#each' do
    it "allows you to iterate just like a normal hash" do
      fall_television = FakeHashWrapper.new
      fall_television[:nbc] = "Selfie"
      fall_television[:amc] = "Walking Dead"
      fall_television[:cbs] = "Scorpion"
      
      expect($stdout).to receive(:puts).with("Selfie")
      expect($stdout).to receive(:puts).with("Walking Dead")
      expect($stdout).to receive(:puts).with("Scorpion")
      
      fall_television.each do |k,v|
        puts v
      end
    end
  end
end