# frozen_string_literal: true

class Invoice < ApplicationRecord
  include TrackTransaction
end
