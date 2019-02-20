module MakeGem

  # Process a file.
  def self.process(src, dst, evaluator)
    IO.write(dst, ERB.new(IO.read(src)).result(evaluator))
  end

end
