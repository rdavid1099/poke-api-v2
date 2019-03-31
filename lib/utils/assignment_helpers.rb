# Module housing simple assignment methods/ patterns
module AssignmentHelpers
  private

  def assign_list(data:, klass:)
    return unless data

    data.map do |raw|
      klass.new(raw)
    end
  end
end
