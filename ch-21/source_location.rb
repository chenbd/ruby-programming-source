
prc1 = Proc.new {|a, b| a + b}
p prc1.lambda?


prc1 = lambda {|a, b| a + b}
p prc1.lambda?

prc0 = Proc.new { nil }
prc1 = Proc.new {|a| a}

p prc0.source_location
p prc1.source_location
