class CalculationService
  prepend BaseService

  attr_reader :data

  def initialize(data:)
    @data = data
  end

  def call
    @errors << :some_error if some_error?

    # do some calculation with data
  end
end
