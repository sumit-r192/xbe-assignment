# frozen_string_literal: true

module TrackTransaction
  extend ActiveSupport::Concern

  included do
    after_commit :check_batch
  end

  def check_batch
    # Do the needfull check here in background
  end
end
