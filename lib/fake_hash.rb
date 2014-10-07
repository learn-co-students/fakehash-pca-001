class FakeHashWrapper
  attr_accessor :elements
  def initialize
    @elements = {}
  end

  def []=(key, value)
    elements[key.to_sym] = value
  end

  def [](key)
    elements[key.to_sym]
  end

  def keys
    elements.keys.sort.reverse
  end

  def first_letter(letter)
    elements.values.select {|value| (elements.key(value))[0] == letter}
  end

  def each
    elements.each do |k,v|
      yield(k,v)
    end
  end
end