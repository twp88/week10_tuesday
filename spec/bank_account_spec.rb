require_relative '../lib/bank_account.rb'

describe Bank_Account do
  subject(:bank_account) { described_class.new }

  describe "Bank Account" do
    context "when initialised" do
      it "initialises with two variables" do
        expect(bank_account.what).to eq 10
        expect(bank_account.hi).to eq "hi"
      end
    end


    context "when add is called" do
      it "adds ten to what" do
        bank_account.add(10)
        expect(bank_account.what).to eq 20
      end
    end
  end


end
