# frozen_string_literal: true

module Menus
  class IndexFacade
    attr_reader :menus

    def initialize
      @menus = Menu.where('date <= ?', Date.current)
    end
  end
end

