class ParamsExampleController < ApplicationController
  def query_params
    num = params["title"]
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


  def url_segment
    input_url=params["thing"]
    render json: {message: "Your input URL is: #{input_url}"}

  end
 
  def body_params_ex
    input_url=params["secret"]
    render json: {message: "Your secret code is: #{input_url}"}
  end

end

