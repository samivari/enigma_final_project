class Offset
  attr_accessor :date

  def initialize(date = todays_date)
    @date = date
  end

  def todays_date
    Time.now.strftime('%d%m%y')
  end

  def squared
    (todays_date.to_i**2).to_s
  end

  def last_four
    squared[-4..-1]
  end
end
