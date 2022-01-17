class Key
  attr_reader :key

  def initialize(key = random_num)
    @key = key
  end

  def keys
    {
      A: key[0..1],
      B: key[1..2],
      C: key[2..3],
      D: key[3..4]
    }
  end

  def random_num
    rand(10_000..99_999).to_s
  end
end
