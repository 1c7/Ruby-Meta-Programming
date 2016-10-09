class Roulette # 轮盘赌
  def method_missing(name, *args)
    person = name.to_s.capitalize
    number = 0 # if you remove this line, 
    3.times do
      number = rand(10) + 1
      puts "#{number}..."
    end
    "#{person} got a #{number}"  # compiler would think 'number' is a method, and try to call it
    # cause infinity loop, and then stack overflow 
  end
end


number_of = Roulette.new
puts number_of.bob