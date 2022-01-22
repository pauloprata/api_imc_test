class CalculatorController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods
  #before_action :authenticate

  def imc
    @result = Calculator.imc(params)
    render json: @result
  end

  def authenticate
    token = self.headers['Authorization']
    return if token == 'er3454536.dfgdfgd3464654=='

    render json: { error: 'token_invalido' }, status: :unauthorized
  end
end