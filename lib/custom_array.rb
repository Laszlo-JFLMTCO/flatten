require 'pry'

class CustomArray

  def initialize(input = [])
    @input = input
  end

  def flatten
    @flattened = []
    flattening(@input)
    @flattened
  end

  def flattening(custom)
    custom.each do |element|
      flattening(element) if element.class.eql?(Array)
      @flattened << element if !element.class.eql?(Array)
    end
  end
end
