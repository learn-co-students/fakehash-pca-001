class FakeHashWrapper
  def initialize
    @keys = []
    @values = []
  end

  def []=(key, value)
    key = key.to_sym

    if @keys.include? key
      @values[@keys.find_index key] = value
    else
    @keys << key
    @values << value
    end
  end

  def [](key)
    index = @keys.find_index(key.to_sym)
    @values[index] if index
  end

  def keys
    @keys.sort.reverse
  end

  def first_letter(char)
    @keys.select { |key| key.to_s.start_with? char}
         .each_with_object([]) do |key, result|
           result << self[key]
         end
  end

  def each
    i = 0
    while i < @keys.size
      yield @keys[i], @values[i]
      i += 1
    end
  end
end
