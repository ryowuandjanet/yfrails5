class AddDebtorAndCreditorToYfcases < ActiveRecord::Migration[5.2]
  def change
    add_column :yfcases, :debtorName , :string
    add_column :yfcases, :debtorIdentitycard , :string
    add_column :yfcases, :debtorBirthday , :date
    add_column :yfcases, :debtorLocallphone , :string
    add_column :yfcases, :debtorMobilelphone , :string
    add_column :yfcases, :debtorNotes , :string
    add_column :yfcases, :debtorCountry , :string
    add_column :yfcases, :debtorTownship , :string
    add_column :yfcases, :debtorVillage , :string
    add_column :yfcases, :debtorNeighbor , :string
    add_column :yfcases, :debtorStreet , :string
    add_column :yfcases, :debtorSection , :string
    add_column :yfcases, :debtorLane , :string
    add_column :yfcases, :debtorAlley , :string
    add_column :yfcases, :debtorNumber , :string
    add_column :yfcases, :debtorFloor , :string
    add_column :yfcases, :debtorBuildholdingpointperson , :string
    add_column :yfcases, :debtorBuildholdingpointall , :string
    add_column :yfcases, :debtorLandholdingpointperson , :string
    add_column :yfcases, :debtorLandholdingpointall , :string
    add_column :yfcases, :creditorName , :string
    add_column :yfcases, :creditorIdentitycard , :string
    add_column :yfcases, :creditorBirthday , :date
    add_column :yfcases, :creditorLocallphone , :string
    add_column :yfcases, :creditorMobilelphone , :string
    add_column :yfcases, :creditorNotes , :string
    add_column :yfcases, :creditorCountry , :string
    add_column :yfcases, :creditorTownship , :string
    add_column :yfcases, :creditorVillage , :string
    add_column :yfcases, :creditorNeighbor , :string
    add_column :yfcases, :creditorStreet , :string
    add_column :yfcases, :creditorSection , :string
    add_column :yfcases, :creditorLane , :string
    add_column :yfcases, :creditorAlley , :string
    add_column :yfcases, :creditorNumber , :string
    add_column :yfcases, :creditorFloor , :string
    add_column :yfcases, :creditorBuildholdingpointperson , :string
    add_column :yfcases, :creditorBuildholdingpointall , :string
    add_column :yfcases, :creditorLandholdingpointperson , :string
    add_column :yfcases, :creditorLandholdingpointall , :string
  end
end
