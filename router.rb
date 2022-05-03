class Router

  def initialize(meals_controller)
    @meals_controller = meals_controller
  end

  def run

    loop do
      print_actions
      action = gets.chomp.to_i
      dispatch(action)
    end
  end

  private

  def print_actions
    puts '------------------------'
    puts '1. Create a Meal'
    puts '2. List meals'
    puts '------------------------'
    puts 'Enter a number:'
  end

  def dispatch(action)
    case action
    when 1 then @meals_controller.add
    when 2 then @meals_controller.list
    else
      puts "Invalid option"
    end
  end

end
