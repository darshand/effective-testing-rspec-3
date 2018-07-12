class Tea
  def flavor
    :earl_grey
  end

  def temp
    205.0
  end
end

RSpec.describe 'tea' do
  let(:tea) { Tea.new }

  it 'tastes like earl grey' do
    expect(tea.flavor).to be :earl_grey
  end

  it 'is hot' do
    expect(tea.temp).to be > 200.0
  end
end
