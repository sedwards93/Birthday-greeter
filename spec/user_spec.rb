require 'user'

describe User do

  subject {described_class.new("Symion","30","December")}

  describe '#initialize' do

    it 'instances of User class are initialized with a name' do
      expect(subject.name).to eq("Symion")
    end

    it 'instances of User class are initialized with a birth day' do
      expect(subject.day).to eq("30")
    end

    it 'instances of User class are initialized with a birth month' do
      expect(subject.month).to eq("December")
    end

    # it 'instances of User class are initialized the day today' do
    #   expect(subject.day_now).to eq(Date.today.strftime("%e"))
    # end

    # it 'instances of User class are initialized the month today' do
    #   expect(subject.month_now).to eq(Date.today.strftime("%B"))
    # end

  end


end