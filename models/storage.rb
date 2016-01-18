require 'json'

class Storage
  attr_reader :criteria
  private :criteria

  def initialize(criteria)
    @criteria = criteria
  end

  def find
    filtered_by_name
  end

  private

  def filtered_by_name
    holidays.select { |holiday| holiday['region'].downcase.include?(query) }
  end

  def query
    criteria.fetch('q', '').downcase
  end

  def holidays
    JSON.parse(File.read(db_file))
  end

  def db_file
    './db/holidays.json'
  end
end
