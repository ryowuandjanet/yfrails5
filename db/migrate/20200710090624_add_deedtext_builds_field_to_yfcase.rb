class AddDeedtextBuildsFieldToYfcase < ActiveRecord::Migration[5.2]
  def change
    add_column :yfcases, :deedtaxBuildingTransferLevel1 , :string
    add_column :yfcases, :deedtaxBuildingTransferLevel2 , :string
    add_column :yfcases, :deedtaxBuildingTransferLevel3 , :string
    add_column :yfcases, :deedtaxBuildingTransferLevel4 , :string
    add_column :yfcases, :deedtaxBuildingTransferLevel5 , :string
    add_column :yfcases, :deedtaxBuildingTransferLevel6 , :string
    add_column :yfcases, :deedtaxBuildingTransferLevel7 , :string
    add_column :yfcases, :deedtaxBuildingTransferStructure1 , :string
    add_column :yfcases, :deedtaxBuildingTransferStructure2 , :string
    add_column :yfcases, :deedtaxBuildingTransferStructure3 , :string
    add_column :yfcases, :deedtaxBuildingTransferStructure4 , :string
    add_column :yfcases, :deedtaxBuildingTransferStructure5 , :string
    add_column :yfcases, :deedtaxBuildingTransferStructure6 , :string
    add_column :yfcases, :deedtaxBuildingTransferStructure7 , :string
    add_column :yfcases, :deedtaxBuildingTransferArea1 , :string
    add_column :yfcases, :deedtaxBuildingTransferArea2 , :string
    add_column :yfcases, :deedtaxBuildingTransferArea3 , :string
    add_column :yfcases, :deedtaxBuildingTransferArea4 , :string
    add_column :yfcases, :deedtaxBuildingTransferArea5 , :string
    add_column :yfcases, :deedtaxBuildingTransferArea6 , :string
    add_column :yfcases, :deedtaxBuildingTransferArea7 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicBuildingNumber1 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicBuildingNumber2 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicBuildingNumber3 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicBuildingNumber4 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicBuildingNumber5 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicArea1 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicArea2 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicArea3 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicArea4 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicArea5 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicHoldings1 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicHoldings2 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicHoldings3 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicHoldings4 , :string
    add_column :yfcases, :deedtaxBuildingTransferPublicHoldings5 , :string

  end
end
