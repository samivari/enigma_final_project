class Encode
  attr_accessor :message, :shifts

  def initialize(message, shifts)
    @message = message
    @shifts = shifts
  end

  def alphabet
    ('a'..'z').to_a << ' '
  end

  def encode_letter(shifts)
    alphabet.rotate(shifts).first
  end
end
