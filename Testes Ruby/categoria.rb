array = [[23, 61],[4, 45, 16, 162, 167, 32, 42]]


pri = []
seg = []
ter = []
qua = []
qui = []
sex = []
set = []
ota = []
non = []
inter = []
array_2 = []
resp = []

array.each do |arr|
    a = arr.map { |z| z.to_s}
    array_2 << a
end

array_2.each do |s|
    s.each do |num|
      if num[0].to_i == 1
        pri << num
      elsif num [0].to_i == 2
        seg << num
      elsif num [0].to_i == 3
        ter << num
      elsif num [0].to_i == 4
        qua << num
      elsif num [0].to_i == 5 
        qui << num
      elsif num [0].to_i == 6
        sex << num
      elsif num [0].to_i == 7
        set << num
      elsif num [0].to_i == 8
        ota << num
      elsif num [0].to_i == 9
        non << num
      end
    end
  inter << non << ota << set << sex << qui << qua << ter << seg << pri
  resp << inter
  inter = []
  pri = []
  seg = []
  ter = []
  qua = []
  qui = []
  sex = []
  set = []
  ota = []
  non = []
end

# Retirando aos ARRAYS vazios
resp.map! do |resp_2|
  resp_2.reject(&:empty?)
end

# Colocar na ordem os que começam com o mesmo número.
conjunto = []
resposta = []
m = ''
resp.each do |resp_2|
  resp_2.each do |resp_3|

    resp_3.each do |num|
      if num[1] == nil
        m = num[0]
      else
        m = num[1]
      end

      p "M: #{m}"
      if m.to_i == 1
        pri << num
      elsif m.to_i == 2
        seg << num
      elsif m.to_i == 3
        ter << num
      elsif m.to_i == 4
        qua << num
      elsif m.to_i == 5 
        qui << num
      elsif m.to_i == 6
        sex << num
      elsif m.to_i == 7
        set << num
      elsif m.to_i == 8
        ota << num
      elsif m.to_i == 9
        non << num
      end
      inter << non << ota << set << sex << qui << qua << ter << seg << pri
      p inter.join
      conjunto << inter.join
      inter = []
      pri = []
      seg = []
      ter = []
      qua = []
      qui = []
      sex = []
      set = []
      ota = []
      non = []
    end
    puts '-' * 10
    resposta << conjunto
    conjunto = []
  end
end
p resposta
