require 'date'
class DateGenerator
  def self.generate
    date = Date.today.strftime('%d%m%y')
  end
end
