class PasswordChecker
  def initialize(email, password)
    @email = email
    @password = password
    #@string = ""
  end
  def check_length
    @password.size > 7
  end
  def check_one_letter
    @password.index(/[A-Za-z]/) != nil
  end
  def check_one_numeric
    @password.index(/[0-9]/) != nil
  end
  def check_one_symbol
    @password.index(/\W/) != nil
  end
  def check_one_upcase_letter
    @password.index(/[A-Z]/) != nil
  end
  def check_one_lowercase_letter
    @password.index(/[a-z]/) != nil
  end
  def check_name_or_domain 
    name = @email.split("@") #=> ["Jorge", "ironhack".com] 
    domain = name[1].split(".")  #=> ["Ironhack", ".com"]
    @password.include?(name[0]) || @password.include?(domain[0])
  end
end

