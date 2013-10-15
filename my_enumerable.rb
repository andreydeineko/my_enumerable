module MyEnumerable

  #For each new yielded element, if the value returned by the block is logically true, true
  #he element gets added to the newly built array; otherwise, it does not.
  def select(&block)
  	return to_enum :select unless block_given?
  	each_with_object([]) { |el, output| output << el if yield(el) }
  end

  def collect(&block)               # map (alias)
  	return to_enum :collect unless block_given?
  	each_with_object([]) { |el, output| output << yield(el) }
  end

  def reject(&block)
  	return to_enum :reject unless block_given?
  	each_with_object([]) { |el, output| output << el unless yield(el) }
  end

  def find(&block)
  	self.select(&block).first
  end

  def include?(value)
  	self.each { |el| return true if el == value }
  	false
  end

  def first()
  	return self[0] if self.is_a?(Array)
  end

  def last()
  	return self[-1] if self.is_a?(Array)
  end

  def inject
  end

end
