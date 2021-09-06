dna_1 = 'AATTAAGGCCC'
dna_2 = 'AADDFFGGCCC'
arr = (0..(dna_2.length-1)).to_a
c = 0

arr.each do |n|
        if dna_2[n] != dna_1[n]
            c += 1
            puts "#{dna_1[n]} != #{dna_2[n]}"
        end
end 
puts c