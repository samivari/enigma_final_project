class Offset
  attr_accessor :date

  def initialize(date = Time.now.strftime('%d%m%y'))
    @date = date
  end

  def date_format
    @date.strftime('%d%m%y')
  end

  def squared
    (date.to_i**2).to_s
  end

  def last_four
    squared[-4..-1]
  end
end
