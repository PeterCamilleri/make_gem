module MakeGem

  # Process a file.
  def self.process(src, dst, evaluator)
    puts "#{src} => #{dst}" if $debug
    IO.binwrite(dst, ERB.new(IO.read(src)).result(evaluator))
  end

end
