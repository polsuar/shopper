# This migration comes from solidus_mercado_pago (originally 20141201204026)
class CreateSolidusMercadoPagoNotifications < ActiveRecord::Migration[4.2]
  def change
    create_table :mercado_pago_notifications do |t|
      t.string :topic
      t.string :operation_id
      t.timestamps
    end
  end
end
