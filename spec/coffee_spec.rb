class Coffee
  def ingredients
    @ingredients ||= []
  end

  def add(ingredient)
    ingredients << ingredient
  end

  def price
    1.00 + (ingredients.size * 0.25)
  end
end

RSpec.describe 'A cup of coffee' do
  let(:coffee) { Coffee.new }

  it 'costs $1' do
    expect(coffee.price).to eq(1.00)
  end

  context 'with milk' do
    before { coffee.add :milk }

    it 'costs $1.25' do
      expect(coffee.price).to eq(1.25)
    end
  end
end


# -fd for neatly print spec desc on console
# rspec ./spec/coffee_spec.rb:25 for running specific test in specific line
# -e <match_text> for executing test cases that matches to specific test
