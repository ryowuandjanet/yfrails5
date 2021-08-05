class AddDeedtaxFieldsToYfcase < ActiveRecord::Migration[5.2]
  def change
    add_column :yfcases, :deedtaxDateOfDeed, :date
    add_column :yfcases, :deedtaxDeclarationDate, :date
    add_column :yfcases, :deedtaxTransferPrice, :integer
    add_column :yfcases, :deedtaxChargeDaffairesTaxDeclarant, :string
    add_column :yfcases, :deedtaxDebtTaxPaymentReceiptMethod, :string
    add_column :yfcases, :deedtaxClosedNewsletter, :string
    add_column :yfcases, :deedtaxUnderreportedDays, :integer
    add_column :yfcases, :deedtaxRemark, :string
  end
end
