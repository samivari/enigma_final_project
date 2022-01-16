require_relative './key'
require_relative './offset'

class Shift
  attr_accessor :key, :offset

  def initialize(key, offset)
    @key = key
    @offset = offset
  end

  def shifts
    {
      A: key.keys[:A].to_i + offset.last_four[0].to_i,
      B: key.keys[:B].to_i + offset.last_four[1].to_i,
      C: key.keys[:C].to_i + offset.last_four[2].to_i,
      D: key.keys[:D].to_i + offset.last_four[3].to_i
    }
  end
end
