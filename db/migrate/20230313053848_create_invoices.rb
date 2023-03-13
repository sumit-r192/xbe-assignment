# frozen_string_literal: true

class CreateInvoices < ActiveRecord::Migration[7.0]
  def change
    create_table :invoices do |t|
      t.float :gross_amount
      t.float :base_amount
      t.float :service_charge
      t.float :sales_tax
      t.float :tips
      t.float :discounts
      t.float :fee

      t.timestamps
    end
  end
end
