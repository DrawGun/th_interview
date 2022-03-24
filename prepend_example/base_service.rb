module BaseService
  module ClassMethods
    def call(*args, **kwargs, &block)
      new(*args, **kwargs, &block).call
    end

    def new(*args, **kwargs)
      kwargs.deep_symbolize_keys!
      super(*args, **kwargs)
    end
  end

  def self.prepended(base)
    base.extend ClassMethods
  end

  attr_reader :errors

  def initialize(*args, **kwargs)
    super(*args, **kwargs)
    @errors = []
  end

  def call
    super
    self
  end

  def success?
    !failure?
  end

  def failure?
    @errors.any?
  end
end
