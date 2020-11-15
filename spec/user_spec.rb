require 'user'
require 'timecop'
describe User do

  subject {described_class.new("Symion","30","12")}

  before do
    Timecop.freeze(Time.local(2020, 12, 31))
  end

  after do
    Timecop.return
  end

  describe '#initialize' do

    it 'instances of User class are initialized with a name' do
      expect(subject.name).to eq("Symion")
    end

    it 'instances of User class are initialized with a birth day' do
      expect(subject.day).to eq(30)
    end

    it 'instances of User class are initialized with a birth month' do
      expect(subject.month).to eq(12)
    end

  end

  describe '#birthday' do

    it 'returns the number of days until the user\'s birthday' do
    expect(subject.birthday).to eq(364)
    end

  end
end