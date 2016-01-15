require 'json'

class Storage
  attr_reader :criteria
  private :criteria

  def initialize(criteria)
    @criteria = criteria
  end

  def find
    filtered_by_name.compact
  end

  private

  def filtered_by_name
    holidays.map do |holiday|
      holiday if holiday['region'].downcase.include?(query)
    end
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
