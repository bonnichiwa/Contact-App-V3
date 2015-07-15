require_relative 'contact_list.rb'

class Interface

  def command
    puts "Do you want to create, destroy, show all or find a contact?"
    command = gets.chomp.to_s

    case command
    when 'all'
      self.all
    when 'create'
      self.create
    when 'destroy'
      self.destroy
    when 'find'
      self.find
    end
  end

  def all
    contact = Contact.all
    puts contact
  end

  def create
    puts 'Please enter their full name: "First name", "Last name", then "email address."'
    puts 'Enter first name:'
    @firstname = gets.chomp.to_s
    puts 'Enter last name:'
    @lastname = gets.chomp.to_s
    puts 'Enter email address:' 
    @email = gets.chomp.to_s
    Contact.create(firstname: @firstname, lastname: @lastname, email: @email) 
  end

  def destroy 
    puts 'What ID would you like to destroy?'
    @ID = gets.chomp
    garbage = Contact.find(@ID)
    garbage.destroy
  end

  def find
    puts 'What would you like to find by?(id/firstname/lastname)'
    input = gets.chomp
      case input
      when 'id'
        puts 'What ID?'
        answer = gets.chomp.to_i
        puts Contact.find(answer)
      when 'firstname'
        puts 'What name?'
        answer = gets.chomp.to_i
        puts = Contact.find_by(firstname: answer)
      when 'lastname'
        puts 'What name?'
        answer = gets.chomp.to_i
        puts Contact.find_by(firstname: answer)
      end
  end
end

interface = Interface.new
interface.command