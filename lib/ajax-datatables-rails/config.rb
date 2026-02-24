# frozen_string_literal: true

module AjaxDatatablesRails

  # Configure AjaxDatatablesRails global settings
  #
  #   AjaxDatatablesRails.configure do |config|
  #     config.db_adapter = :postgresql
  #   end

  def self.configure
    yield @config ||= AjaxDatatablesRails::Configuration.new
  end

  # AjaxDatatablesRails global settings
  def self.config
    @config ||= AjaxDatatablesRails::Configuration.new
  end

  class Configuration
    attr_accessor :db_adapter, :nulls_last

    def initialize
      @db_adapter = :postgresql
      @nulls_last = false
    end
  end
end
