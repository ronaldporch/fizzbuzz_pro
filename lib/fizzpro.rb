require 'csv'

class FizzbuzzPro
  attr_accessor :array

  def initialize(file)
    @array = CSV.read(file, converters: :numeric)
  end

  def fizzbuzz(number)
    @@hash = []
    display = ''
    range = number.to_a
    range.each do |number|
      @array.length.times do |n|
        display += @array[n - 1][1] if number % @array[n - 1][0] == 0
      end
      @@hash << (display == '' ? number : display)
      display = ''
    end
  @@hash
  end
end

fib = FizzbuzzPro.new('./fizzbuzz.csv')
fib.fizzbuzz(1..10)
