require 'fieldhand/set'
require 'ox'

module Fieldhand
  RSpec.describe Set do
    describe '#descriptions' do
      it 'returns an empty array if there are no descriptions' do
        element = Ox.parse('<set/>')
        set = described_class.new(element)

        expect(set.descriptions).to be_empty
      end

      it 'returns descriptions when present' do
        element = Ox.parse('<set><setDescription/><setDescription/></set>')
        set = described_class.new(element)

        expect(set.descriptions.size).to eq(2)
      end
    end

    describe '#to_s' do
      it 'returns the set spec' do
        element = Ox.parse('<set><setSpec>A</setSpec></set>')
        set = described_class.new(element)

        expect(set.to_s).to eq('A')
      end
    end
  end
end
