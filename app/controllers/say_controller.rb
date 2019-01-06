# frozen_string_literal: true

class SayController < ApplicationController
  def hello; end

  def goodbye
    @string = '' unless @string = params[:v1]
    kr5 = ->(x) { Math.sqrt(x).to_i**2 == x }
    @string = @string.split.push('7').map(&:to_i)
    flag = false
    fa = []
    cra = []
    @string.each do |cr|
      temp = kr5.call(cr)
      if flag && temp then cra << cr
      elsif !flag && temp then fa << cra; flag = true; cra = []; cra << cr
      elsif flag && !temp then fa << cra; flag = false; cra = [] end
    end
    @result = fa.reject(&:empty?)
    @maxlen = fa != [] ? fa.max_by(&:size).size : 0
  end
end
