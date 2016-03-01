describe Storage do
  describe '#find' do
    subject(:holidays) { Storage.new(criteria).find }

    context 'when given no criteria' do
      let(:criteria) { {} }

      it 'returns all holidays' do
        expect(holidays.count).to eq(12)
      end
    end

    context 'when given some criteria' do
      let(:criteria) {
        { 'q' => 'algarve' }
      }

      it 'returns holiday that matches "algarve"' do
        expect(holidays.count).to eq(1)
      end

      context 'criteria is partial match' do
        let(:criteria) {
          { 'q' => 'cos' }
        }
        let(:result_1) {
          {"region"=>"Costa Brava", "price"=>700}
        }
        let(:result_2) {
          {"region"=>"Costa Del Sol", "price"=>800}
        }
        let(:results) {
          holidays.find.first(2)
        }


        it 'returns correct number of results' do
          expect(holidays.count).to eq(2)
        end

        it 'returns correct result data' do
          expect(results.first).to eql(result_1)
          expect(results.last).to eql(result_2)
        end
      end
    end
  end
end
