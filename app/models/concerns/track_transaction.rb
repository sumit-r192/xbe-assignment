# frozen_string_literal: true

# Include this concern file into all the required models where we need to track any changes in DB records.

module TrackTransaction
  extend ActiveSupport::Concern

  included do
    after_commit :check_batch
  end

  def check_batch
    # Call background job to perform the required verification and updateds.
    VerifyTransactionJob.perform_later(self.class.name, id)
  end
end
