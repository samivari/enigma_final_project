require 'date'
class DateGenerator
  def self.generate
    date = Date.today.strftime('%m%d%y')
  end
end
