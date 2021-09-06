array = [[23, 621, 15, 35, 1, 3, 62],[8, 4,]]

numeros = Array(1..9).max(9)
r = []
u = []
vai_que_da = []
obs = []
inter = []

array.each do |arr|
    a = arr.map { |z| z.to_s}
    a = a.max(9)
    r << a
end 

r.each do |s|
    numeros.each do |num|
        u = []
        s.each do |q|
            if q[0].to_i == num
                # Trabalhando com o número da vez
                # Colocar na sequencia certa dentro do u = []

                inter << q 
                
                # Fim: Trabalhando com o número da vez
            end
            puts "Inter: #{inter}"
        end
        obs << u
        inter = []
    end
    
    vai_que_da << obs.join.to_i
    obs = []
end
vai_que_da
