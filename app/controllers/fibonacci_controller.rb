class FibonacciController < ApplicationController
  def calculate
    n = params[:n]

    if valid_input?(n)
      n = n.to_i
      result = fibonacci(n)
      render json: { input: n, result: result }
    else
      render json: { error: "Invalid input" }, status: :bad_request
    end
  end

  private

  def valid_input?(input)
    input.present? && input.to_i.to_s == input && input.to_i >= 0
  end


  def fibonacci(n)
    if n <= 1
      n
    else
      fibonacci(n - 1) + fibonacci(n - 2)
    end
  end
end
