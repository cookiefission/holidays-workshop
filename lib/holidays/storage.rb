require 'json'

module Holidays
  class Storage
    def self.find(criteria = {})
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
      ENV['DB_FILE'] || default_db_file
    end

    def default_db_file
      File.join(HOLIDAYS_ROOT, 'db', 'holidays.json')
    end
  end
end
