class AppController < ApplicationController
  def home
    render(:template => "new/home")
  end

  def square_root_new
    render(:template => "new/square_root")
  end

  def square_root_results
    @number = params.fetch("user_number").to_f
    render(:template => "new/square_root_results")
  end

  def square_new
    render(:template => "new/square")
  end

  def square_results
    @num = params.fetch("number").to_f
    render(:template => "new/square_results")
  end

  def random_new
     render(:template => "new/random")
  end

  def random_results
    @min = params.fetch("user_min").to_f
    @max = params.fetch("user_max").to_f
    render(:template => "new/random_results")
  end

  def payment_new
    render(:template => "new/payment")
  end

  def payment_results
    @apr = params.fetch("user_apr").to_f
    @years = params.fetch("user_years").to_i
    @principal = params.fetch("user_pv").to_f
    percentage = @apr / 100.0
    periods = @years * 12.0
    rate_per_period = percentage / 12
    @payment = (@principal * rate_per_period) / (1 - ((1 + rate_per_period) ** -periods))
    render(:template => "new/payment_results")
  end

end
