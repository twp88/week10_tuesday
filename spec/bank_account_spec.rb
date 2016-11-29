require_relative '../lib/bank_account.rb'

describe Bank_Account do
  subject(:bank_account) { described_class.new }

  describe "Bank Account" do
    context "when initialised" do
      it "initialises with key variables" do
        expect(bank_account.balance).to eq 0.0
        expect(bank_account.transactions).to be {}
        expect(bank_account.index).to eq 1
        expect(bank_account.credit).to eq 0
        expect(bank_account.debit).to eq 0
      end
    end


    context "when credit is called" do
      it "credits ten to balance" do
        bank_account.creditizer(10.0)
        expect(bank_account.balance).to eq 10.0
        expect(bank_account.transactions).not_to be nil
        expect(bank_account.index).to eq 2

      end
    end


  end
end
