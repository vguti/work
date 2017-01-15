class PasswordChecker
  def initialize(email, password)
    @email = email
    @password = password
  end

  def checkpassword
   if (@password.match(/[a-z]/)) && (@password.match(/\d/))&& (@password.match(/_|[^\w]/))
    return true
  else 
    return false
  end
  end

  def password_length
    if @password.length > 7 
      return true
    else false
    end

  end


  def password_upcase
    if @password.match(/[A-Z]/)
      return true
    else false
    end
  end


  def match_mail_pass
    arr = @email.split("@")
    dom = (@email.split("@").last).split(".").first

    if @password.include?(arr[0])
      return false
    elsif 
       @password.include?(dom)
      return false
    else 
      return true
    end
  
  end
  
end



