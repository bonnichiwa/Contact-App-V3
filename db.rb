require_relative 'contact_list.rb'



class ContactDatabase

  attr_accessor :id, :lastname, :firstname, :email

  def initialize(hash)
    @id = hash["id"].to_i if hash["id"]
    @firstname = hash["firstname"]
    @lastname= hash["lastname"]
    @email = hash["email"]
  end

  def create
    Contact.create(firstname: @firstname, lastname: @lastname, email: @email) 
  end

end