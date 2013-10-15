require 'rspec'
require_relative 'my_enumerable.rb'

describe MyEnumerable do
  
  before do
  	@h = [1, 2, 4, 3, 5, 6, 9]
  end

  it 'should select value' do
  	@h.select { |b| b > 5 }.should == [6, 9]
  end

  it 'should collect value' do
  	@h.collect { |b| b*2 }.should == [2, 4, 8, 6, 10, 12, 18]
  end

  it 'should reject value' do
  	@h.reject { |b| b < 9 }.should == [9]
  end

  it 'should find value' do
    @h.find { |b| b>5 }.should == 6
  end

  it 'should check if value is included' do
  	@h.include?(10).should == false
  end

  it 'should find first element in the array' do
  	@h.first.should == 1
  end

  it 'should find the last element in the array' do
  	@h.last.should == 9
  end

end
