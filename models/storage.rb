require 'json'

class Storage
  def self.find(criteria)
    holidays # .your_code_here
  end

  def self.holidays
    new.load_holidays
  end

  def load_holidays
    JSON.parse(File.read(db_file))
  end

  private

  def db_file
    './db/holidays.json'
  end
end
