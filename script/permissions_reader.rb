input = ARGV[0].dup
input.slice!("d")
textperms = input.scan(/.../)
octals = Array.new()
textperms.each do |string|
  if string.eql? "rwx"
    octals.push(7)
  elsif string.eql? "r-x"
    octals.push(5)
  elsif string.eql? "rw-"
    octals.push(6)
  elsif string.eql? "r--"
    octals.push(4)
  elsif string.eql? "--x"
    octals.push(1)
  elsif string.eql? "-wx"
    octals.push(3)
  elsif string.eql? "-w-"
    octals.push(2)
  elsif string.eql? "---"
    octals.push(0)
  end

end
octals = octals.to_s
octals.tr!('[], ', '')
octals.strip!
puts octals
