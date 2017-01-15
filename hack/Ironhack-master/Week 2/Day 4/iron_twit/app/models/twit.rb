class Twit
  attr_accessor :body

  SWEARWORDS = %w( fuck shit ass dick )
  PC_POLICE = []

  def initialize(body)
    @body = body
  end

  def valid?
    length = @body.length < 141
    swears = SWEARWORDS.map {|word| @body.downcase.include? word }.none?

    length && swears
  end

  def body_size
    @body.split(" ").join(" ").size
  end
end