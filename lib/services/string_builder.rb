module Services
  module StringBuilder
    def reverse(line)
      line.nil? ? "nothing to reverse" : line.reverse!
    end
  end
end