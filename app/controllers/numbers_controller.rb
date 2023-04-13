class NumbersController < ApplicationController
  def winners
    @zebra = Array.new

    5.times do
      giraffe = rand(1...100)
      
      @zebra.push(giraffe)
    end

    render({ :template => "lottery_stuff/woohoo.html.erb"})
  end
  
  def losers
    @unlucky_numbers = Array.new

    5.times do
      num = rand(1...100)

      @unlucky_numbers.push(num)
    end

    render({ :template => "lottery_stuff/boo.html.erb"})

  end
end
