require 'queue'

describe Queue do

  it 'returns separated attributes' do
    expect(Queue.parse("a b c")).to eq ['a', 'b', 'c']
  end

end
