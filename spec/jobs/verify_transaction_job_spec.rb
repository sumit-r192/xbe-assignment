# frozen_string_literal: true

require 'rails_helper'

RSpec.describe VerifyTransactionJob, type: :job do
  subject(:job) { described_class.perform_later(invoice.class.name, invoice.id) }

  let(:invoice) { create(:invoice) }

  it 'queues the job' do
    expect { job }.to have_enqueued_job(described_class)
      .with(invoice.class.name, invoice.id)
  end
end
