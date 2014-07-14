require 'queue'

describe Queue do

  describe '.parse' do

    context 'list of jobs given' do
      let(:input) { File.read('spec/fixtures/multiple_arguments.txt') }

      it 'returns separated attributes' do
        expect(Queue.parse(input)).to eq ['a', 'b', 'c']
      end
    end

    context 'single job given' do
      it 'returns one-element collection' do
        expect(Queue.parse("a => ")).to eq ['a']
      end
    end

    context 'blank list given' do
      it 'returns blank collection' do
        expect(Queue.parse("")).to eq []
      end
    end

  end
end
