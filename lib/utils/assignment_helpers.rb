# Module housing simple assignment methods/ patterns
module AssignmentHelpers
  module_function

  def assign_list(data:, klass:)
    return unless data

    data.map do |raw|
      klass.new(raw)
    end
  end
end
