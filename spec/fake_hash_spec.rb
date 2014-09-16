describe FakeHashWrapper do
  describe '#[]()' do
    it 'should allow you to set values in the hash' do
      fake = FakeHashWrapper.new
      fake[:blake] = 'the best'
      expect(fake[:blake]).to eq('the best')
    end

    it 'should return values regardless of whether they are strings or symbols' do
      fake = FakeHashWrapper.new
      fake[:blake] = 'the best'
      fake['anisha'] = 'awesome'
      expect(fake['blake']).to eq('the best')
      expect(fake[:anisha]).to eq('awesome')
    end
  end

  describe '#keys' do
    it 'should return all the keys in the hash in a descending alphabetized array' do
      fake = FakeHashWrapper.new
      fake[:giraffes] = 'cute'
      fake[:cats] = 'the best'
      fake[:dogs] = 'also the best'
      expect(fake.keys).to eq([:giraffes, :dogs, :cats])
    end
  end

  describe '#first_letter' do
    it 'should return all the values that have keys beginning with a certain letter' do
      fake = FakeHashWrapper.new
      fake[:apples] = 'wormy'
      fake[:anteaters] = 'i like them'
      fake[:balls] = 'why'
      expect(fake.first_letter('a')).to eq(['wormy', 'i like them'])
    end
  end
end