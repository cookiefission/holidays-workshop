describe Storage do
  describe '.find' do
    subject(:holidays) { Storage.find(criteria) }

    context 'when given no criteria' do
      let(:criteria) { {} }

      it 'returns all holidays' do
        expect(holidays.count).to eq(12)
      end
    end

    context 'when given an exact query match' do
      let(:criteria) {
        {
          q: 'Zante',
        }
      }

      it 'returns only the Zante holiday' do
        expect(holidays.count).to eq(1)
        expect(holidays.first['region']).to eq('Zante')
      end

      context 'which does not match the case' do
        let(:criteria) {
          {
            q: 'zante',
          }
        }

        it 'returns only the Zante holiday' do
          expect(holidays.count).to eq(1)
          expect(holidays.first['region']).to eq('Zante')
        end
      end
    end

    context 'when given a partial match for one holiday' do
      let(:criteria) {
        {
          q: 'Zan',
        }
      }

      it 'returns only the Zante holiday' do
        expect(holidays.count).to eq(1)
        expect(holidays.first['region']).to eq('Zante')
      end

      context 'which does not match the case' do
        let(:criteria) {
          {
            q: 'zan',
          }
        }

        it 'returns only the Zante holiday' do
          expect(holidays.count).to eq(1)
          expect(holidays.first['region']).to eq('Zante')
        end
      end
    end

    context 'when given a partial match for multiple holidays' do
      let(:criteria) {
        {
          q: 'Co',
        }
      }

      it 'returns all of the matching holidays' do
        expect(holidays.count).to eq(3)
      end

      context 'which does not match the case' do
        let(:criteria) {
          {
            q: 'co',
          }
        }

        it 'returns all of the matching holidays' do
          expect(holidays.count).to eq(3)
        end
      end
    end

    context 'when given a query which does not match' do
      let(:criteria) {
        {
          q: 'Foo',
        }
      }

      it 'return no holidays' do
        expect(holidays.count).to eq(0)
      end

      context 'regardless of case' do
        let(:criteria) {
          {
            q: 'foo',
          }
        }

        it 'return no holidays' do
          expect(holidays.count).to eq(0)
        end
      end
    end
  end
end
