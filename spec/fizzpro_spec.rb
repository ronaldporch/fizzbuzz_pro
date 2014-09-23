require 'fizzpro'
require 'minitest/autorun'
require 'minitest/spec'

describe FizzbuzzPro do
  before do
    @fib = FizzbuzzPro.new('./fizzbuzz.csv')
  end


  it 'file exists' do
    @fib.must_be_instance_of FizzbuzzPro
    @fib.wont_be_nil
  end

  it 'fizzbuzz.csv first key is 3' do
    @fib.array[0][0].must_equal 3
  end

  it 'fizzbuzz.csv second key is 5' do
    @fib.array[1][0].must_equal 5
  end

  it 'fizzbuzz.csv first value is fizz' do
    @fib.array[0][1].must_equal 'fizz'
  end

  it '3 should respond fizz' do
    @fib.fizzbuzz(3..3)[0].must_equal 'fizz'
  end

  it '5 should respond buzz' do
    @fib.fizzbuzz(5..5)[0].must_equal 'buzz'
  end

  it '7 should respond sivv' do
    @fib.fizzbuzz(7..7)[0].must_equal 'sivv'
  end

  it '15 should respond fizzbuzz' do
    @fib.fizzbuzz(15..15)[0].must_equal 'fizzbuzz'
  end

  it '105 should respond fizzbuzzsivv' do
    @fib.fizzbuzz(105..105)[0].must_equal 'sivvfizzbuzz'
  end
end
