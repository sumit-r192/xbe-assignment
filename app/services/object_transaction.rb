# frozen_string_literal: true

class ObjectTransaction < ApplicationService
  attr_reader :object

  def initialize(object)
    @object = object
  end

  def call
    return if object.blank?

    check_and_update_data
  end

  def check_and_update_data
    # Perform the require code check here
  end
end
