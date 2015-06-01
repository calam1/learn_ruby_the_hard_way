#http://learnrubythehardway.org/book/ex37.html

BEGIN { puts "This is the beginning."}
END { puts "This is the end."}

class User

  def full_name
    puts "Johnny Walker"
  end

  alias :name :full_name
  alias_method :name_2, :full_name

  #alias_method allows you to override/polymorphism
  def self.add_rename
    alias_method :name_3, :full_name
  end

  def self.add_rename_2
    alias :name_4 :full_name
  end
end

class Developer < User

  def full_name
    puts "Geeky geek"
  end

  add_rename
  add_rename_2
end

User.new.name
User.new.name_2

Developer.new.name_3 #this is a polymorphic call will use Developer full_name method
Developer.new.name_4 #this is like a static, you can call it from sublcass but it will use parent alias so no polymorphism

def raise_and_rescue
  begin
    puts "I am before the raise."
    raise "An error has occured." 
    puts "After the raise."
  rescue 
    puts "I am rescued."
  end
  puts "I am after the begin block"
end

raise_and_rescue