
require_relative 'person'

class Decorator < Nameable
  def initialize(nameable = nil)
    @nameable = nameable
  end

  def correct_name
    @nameable&.correct_name
  end

  def decorate(nameable)
    @nameable = nameable
  end
end

class CapitalizeDecorator < Decorator
  def correct_name
    super&.capitalize
  end
end

class TrimmerDecorator < Decorator
  def correct_name
    trimmed_name = super&.slice(0, 10)
    trimmed_name&.length == 10 ? "#{trimmed_name}..." : trimmed_name
  end
end
