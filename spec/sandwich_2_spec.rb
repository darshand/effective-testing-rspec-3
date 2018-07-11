Sandwich = Struct.new(:taste, :toppings)

RSpec.describe 'An ideal sandwich' do
  def sandwich
    @sandwich ||= Sandwich.new('delecious', [])
    # current_user = nil || Toaster.new
  end

  it 'is delicious' do
    taste = sandwich.taste
    expect(taste).to eq('delecious')
  end

  it 'lets me add toppings' do
    sandwich.toppings << 'cheese'
    toppings = sandwich.toppings

    expect(toppings).not_to be_empty
  end
end
