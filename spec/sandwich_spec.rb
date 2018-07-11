Sandwich = Struct.new(:taste, :toppings)

RSpec.describe 'An ideal sandwich' do
  it 'is delicious' do
    sandwich = Sandwich.new('delecious', [])
    taste = sandwich.taste
    expect(taste).to eq('delecious')
  end
end
