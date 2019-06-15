# frozen_string_literal: true

require 'rails_helper'

describe DeliveryCompany, type: :model do
  let!(:yamato) { build(:delivery_company) }
  let!(:sagawa) { build(:delivery_company, :sagawa) }
  let!(:japan_post) { build(:delivery_company, :japan_post) }
  let!(:tmg) { build(:delivery_company, :tmg) }

  describe 'validation' do
    let(:delivery_company) { create(:delivery_company) }

    it 'succeeds when has contractor and url' do
      expect(delivery_company).to be_valid
    end

    context 'when uniqueness test' do
      subject { -> { described_class.create!(contractor: delivery_company.contractor) } }

      before { delivery_company } # creates record in advance

      it 'raises error when save duplicate records; uniqueness' do
        is_expected.to raise_error(ActiveRecord::RecordInvalid)
      end
    end

    it 'is invalid model when url nil' do
      expect(yamato.tap { |y| y.url = nil }).to be_invalid
    end
  end

  describe 'contractor enum' do
    it 'is correctly vendor' do
      expect(yamato.yamato?).to be(true)
      expect(sagawa.sagawa?).to be(true)
      expect(japan_post.japan_post?).to be(true)
      expect(tmg.tmg?).to be(true)
    end
  end
end
