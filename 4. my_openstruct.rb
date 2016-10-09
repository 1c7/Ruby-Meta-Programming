# page 82
class MyOpenStruct
  def initialize
    @attr = {}
  end

  def method_missing(name, *args)
    attribute = name.to_s
    if attribute =~ /=$/  # if end with '='
      @attr[attribute.chop] = args[0]
    else
      @attr[attribute]
    end
  end
end



icecream = MyOpenStruct.new
icecream.flavor = 'vanilla'
p icecream.flavor