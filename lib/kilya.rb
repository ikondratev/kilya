class Kilya
  class << self
    def hello
      "Hello i'm kIlya"
    end
  end

  def reverse(line)
    line.nil? ? "Nothing to say" : line.reverse!
  end
end
