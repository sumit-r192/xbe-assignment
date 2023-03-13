# frozen_string_literal: true

# Call this Job to perform the check related to changes/updates in DB.

class VerifyTransactionJob < ApplicationJob
  attr_reader :object

  def perform(class_name, class_id)
    @object = class_name.constantize.find_by(id: class_id)
    return if @object.blank?

    check_and_update
  end

  private

  def check_and_update
    # Add code base to check and update all relative data
  end
end
