# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Invoice do
  context 'FactoryBot' do
    let(:invoice) { create(:invoice) }

    it 'should queue call for the transaction check' do
      expect { invoice }.to change {
        VerifyTransactionJob.queue_adapter.enqueued_jobs.size
      }.by(1)
    end
  end
end
