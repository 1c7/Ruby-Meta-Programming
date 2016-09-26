class MyClass
  def my_method(my_arg)
    my_arg * 2
  end
end

# normal way
obj = MyClass.new
p obj.my_method(3)


# use send()
p obj.send(:my_method, 3)



# Conclusion
# 	use send() to call method dynamically
