class FxController < ApplicationController
  def rates
    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")
    @array_of_symbols = @symbols_hash.keys
    render({ :template => "fx_templates/fx.html.erb" })
  end

  def ind_rates
    @sign = params.fetch("the_symbol")

    @raw_data = open("https://api.exchangerate.host/symbols").read
    @parsed_data = JSON.parse(@raw_data)
    @symbols_hash = @parsed_data.fetch("symbols")
    @array_of_symbols = @symbols_hash.keys

    render({ :template => "fx_templates/ind_fx.html.erb" })
  end

  def fromto_rates
    @sign1 = params.fetch("sym1")
    @sign2 = params.fetch("sym2")

    @raw_data = open("https://api.exchangerate.host/convert?from=#{@sign1}&to=#{@sign2}").read
    @parsed_data = JSON.parse(@raw_data)
    @output = @parsed_data.fetch("result")

    render({ :template => "fx_templates/fromto_fx.html.erb"})
  end
end