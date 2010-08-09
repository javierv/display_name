require 'helper'

class Person
  include DisplayName
  
  display_name :full_name

  def initialize(name, last_name)
    @name = name
    @last_name = last_name
  end

  def full_name
    "#{@name} #{@last_name}"
  end
end

class DisplayNameTest < Test::Unit::TestCase
  test 'using display_name method returns the result of the specified method' do
    @person = Person.new('Juan', 'Olvido')
    assert_equal @person.display_name, "Juan Olvido"
  end

  test 'using to_s retuns the result of the specified method' do
    @person = Person.new('Juan', 'Olvido')
    assert_equal "Juan Olvido", @person.to_s
  end
end
