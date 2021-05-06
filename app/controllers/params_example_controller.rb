class ParamsExampleController < ApplicationController
  def query_params
    num = params["num"]
    guessedNum = "60"
    comment = ""
    if num < "36"
      comment = "You are too low"
    elsif num > "100"
      comment = "You are too high"
    else
      comment = "GG you guesed it"
    end
    render json: {message: "your number is: #{num}", message2: "#{comment} #{num}"}
  end
end

