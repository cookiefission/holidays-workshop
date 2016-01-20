require 'json'

class Storage

  attr_reader :criteria
  private :criteria

  def initialize(criteria)
    @criteria = criteria
  end

  def self.find(criteria)
    new(criteria).find
  end

  def find
    holidays.select { |holiday| holiday['region'].downcase.include? query }
  end

  private

  def query
    criteria[:q].to_s.downcase
  end

  def holidays
    JSON.parse(File.read(db_file))
  end

  def db_file
    './db/holidays.json'
  end

end
