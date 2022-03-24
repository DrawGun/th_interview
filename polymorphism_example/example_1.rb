class Search
  def search(type)
    return raise 'Unknown search type' unless type.in?([:job, :user])

    "#{type}_search".classify.constantize.new.search
  end
end

class JobSearch
  def search
  end
end

class UserSearch
  def search
  end
end
