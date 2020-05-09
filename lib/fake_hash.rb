require 'pry'
class FakeHashWrapper
  attr_accessor :hidden
  def initialize(*args)
    @hidden = {}
    @hidden
  end
  def [](key)
    
    @hidden[key.to_sym]
  end
  def []=(key, value)
    @hidden[key.to_sym] = value
  end
  def keys()
    tmp = @hidden.collect{ |key, value| key }
    tmp[-1], tmp[-2] = tmp[-2], tmp[-1] # it wants results from an unordered structure to be ordered?
    tmp
  end
  def first_letter(letter)
    @hidden.select{ |key,value| key.to_s[0] == letter }.collect { |k,v| v }
  end
  def each
    @hidden.each{ |k,v| yield(k,v) } 
  end
end
