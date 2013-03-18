NUMBERS = 
{
  50 => "L",
  40 => "XL",
  10 => "X",
  9 => "IX",
  5 => "V",
  4 => "IV",
  1 => "I"
}

def convert(n)
  result = ""
  NUMBERS.each do |int, numeral|
    while n >= int
      result << numeral
      n -= int
    end
  end
  result
end




describe "Roman Numeral Kata" do
{
  1 => "I",
  2 => "II",
  3 => "III",
  4 => "IV",
  5 => "V",
  6 => "VI",
  9 => "IX",
  11 => "XI",
  41 => "XLI",
  51 => "LI"
}.each do |int, numeral|
    it "converts #{int} to #{numeral}" do
      convert(int).should eq numeral
    end
  end
end
