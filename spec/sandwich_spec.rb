Sandwich = Struct.new(:taste, :toppings)

RSpec.describe 'An ideal sandwich' do
  it 'is delicious' do
    sandwich = Sandwich.new('delecious', [])
    taste = sandwich.taste
    expect(taste).to eq('delecious')
  end

  it 'lets me add toppings' do
    sandwich = Sandwich.new('delecious', [])
    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings

    expect(toppings).not_to be_empty
  end
end
