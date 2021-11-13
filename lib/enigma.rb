require './lib/key_generator'
require './lib/date_generator'

class Enigma
  attr_reader :key_generator, :date_generator

  def initialize(key_generator = default_key_generator, date_generator = default_date_generator)
    @key_generator = key_generator
    @date_generator = date_generator
  end

  def default_key_generator
    KeyGenerator
  end

  def default_date_generator
    DateGenerator
  end

  def encrypt(message, key = generated_key, date = generated_date); end

  def generated_key
    key_generator.generate
  end

  def generated_date
    date_generator.generate
  end
end
