require 'pry'

class FakeHashWrapper
  include Enumerable
  attr_accessor :my_hash

  def initialize(hash={})
    @my_hash = hash
  end

  def [](key)
    my_hash[key.to_sym]
  end

  def []=(key, value)
    @my_hash[key.to_sym] = value
  end

  def keys
    @my_hash.keys.sort.reverse
  end

  def first_letter(letter)
    array =[]
    @my_hash.each  do |key, value|
      array << value if key.to_s.start_with?(letter)
    end
    array
  end

  def each(&block)
    @my_hash.each(&block)
  end
end
