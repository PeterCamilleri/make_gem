module MakeGem

  # Process a file.
  def self.process(src, dst, evaluator)
    puts "   #{File.basename(src)} => #{dst}" if $debug
    IO.binwrite(dst, ERB.new(IO.read(src)).result(evaluator))
  end

end
