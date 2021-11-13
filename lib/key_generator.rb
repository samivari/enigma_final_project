class KeyGenerator
  def self.generate
    key = rand(0..99_999).to_s.rjust(5, '0')
  end
end
