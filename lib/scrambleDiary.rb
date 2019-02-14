class ScrambledDiary
  def initialize(contents)
    @contents = contents
  end

  def to_do(a)
    a.do()
  end
  def scramble_by_reversing
    @contents = @contents.reverse
  end

  def unscramble_by_reversing
    @contents = @contents.reverse
  end
end

class Scramble_by_advancing_chars
  def initialize(contents, step = nil)
    @contents = contents
    @step = step
  end

  def do
    plain_chars = @contents.chars
    scrambled_chars = plain_chars.map do |char|
      (char.ord + @step).chr
    end
    @contents = scrambled_chars.join
  end
end

class Unscramble_by_advancing_chars
  def initialize(contents , step = nil)
    @contents = contents
    @step = step
  end

  def do
    scrambled_chars = @contents.chars
    plain_chars = scrambled_chars.map do |char|
      (char.ord - @step).chr
    end
    @contents = plain_chars.join
  end
end

class Read
  def initialize(contents , step = nil)
    @contents = contents
    @step = step
  end
  def do
    @contents
  end
end
puts ScrambledDiary.new("abc").to_do(Scramble_by_advancing_chars.new("abc",10))

puts ScrambledDiary.new("abc").to_do(Unscramble_by_advancing_chars.new("klm",10))

puts ScrambledDiary.new("abc").to_do(Read.new("abc"))
