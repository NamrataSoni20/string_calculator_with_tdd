require_relative 'add'

RSpec.describe 'add' do

  it 'check add method is defined or not?' do
    expect(Add).to respond_to(:add) 
  end
  
end