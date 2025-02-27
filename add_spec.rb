require_relative 'add'

RSpec.describe 'add' do

  it 'check add method is defined or not?' do
    expect(Add).to respond_to(:add) 
  end

  it 'returns 0 for an empty string' do
    expect(Add.add('')).to eq(0)
  end
  
end