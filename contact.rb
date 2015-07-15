class Contact < ActiveRecord::Base

  def to_s
    return "First name: #{firstname} Last name: #{lastname} Email: #{email}"
  end

end

