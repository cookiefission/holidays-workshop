describe Storage do
  describe '#find' do
    subject(:holidays) { Storage.find(criteria) }

    context 'when given no criteria' do
      let(:criteria) { {} }

      it 'returns all holidays' do
        expect(holidays.count).to eq(12)
      end
    end
  end
end
