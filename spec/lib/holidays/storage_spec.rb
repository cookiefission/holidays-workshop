require 'holidays/storage'

module Holidays
  RSpec.describe Storage do
    describe '.find' do
      subject(:holidays) { Storage.find(criteria) }

      let(:criteria) { {} }

      context 'when given no criteria' do
        it 'returns all holidays' do
          expect(holidays.count).to eq(10)
        end
      end
    end
  end
end
