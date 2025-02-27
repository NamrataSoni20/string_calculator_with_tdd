require_relative 'add'

RSpec.describe 'add' do

  it 'check add method is defined or not?' do
    expect(Add).to respond_to(:add) 
  end

  it 'returns 0 for an empty string' do
    expect(Add.add('')).to eq(0)
  end

  it 'returns the number itself for a single number' do
    expect(Add.add('5')).to eq(5)
  end

  it 'returns the sum of numbers separated by space' do
    expect(Add.add('10\n50\n100')).to eq(160)
  end
  
end