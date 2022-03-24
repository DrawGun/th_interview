class Search
  def self.build_from_type(type)
    case type
    when :job
      JobSearch.new(type)
    when :user
      search_users
    else
      raise 'Unknown search type'
    end
  end

  attr_reader :type
end

class JobSearch < Search
  def initialize
    @type = :job
  end

  def search
  end
end

class UserSearch < Search
  def initialize
    @type = :user
  end

  def search
  end
end
