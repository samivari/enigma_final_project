class KeyGenerator
  attr_reader :key

  def initialize(key = random_num)
    @key = key
  end

  def key_offset
    {
      A: key[0..1],
      B: key[1..2],
      C: key[2..3],
      D: key[3..4]
    }
  end
end
