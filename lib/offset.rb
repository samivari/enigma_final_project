require 'time'
class Offset
  attr_reader :date

  def initialize(date = Time.now.strftime('%d%m%y'))
    @date = date
  end

  def date_format
    if @date.instance_of?(Time)
      @date.strftime('%d%m%y')
    else
      @date = date
    end
  end

  def squared
    (date_format.to_i**2).to_s
  end

  def last_four
    squared[-4..-1]
  end
end
