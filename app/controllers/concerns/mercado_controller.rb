
class MercadoController < ActionController::Base
  def index
    require 'mercadopago.rb'

    $mp = MercadoPago.new('TEST-3784021221335760-031823-3cceada11338688ec9b780d06ed3e255-173622283')

    preference_data = {
      "items": [
        {
          "title": "testCreate", 
          "quantity": 1, 
          "unit_price": 10.2, 
          "currency_id": "ARS"
        }
    @preference = $mp.create_preference(preference_data)

    puts @preference
  end
end