require 'pry'

class String

  def sentence?
    self[-1, 1] == "."
  end

  def question?
    self[-1, 1] == "?"
  end

  def exclamation?
    self[-1, 1] == "!"
  end

  def count_sentences
    self.split(/[.?!]/).select{|sentence|
      sentence != ""
  }.count 
  end
end