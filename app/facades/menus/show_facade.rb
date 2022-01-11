# frozen_string_literal: true

module Menus
  class ShowFacade
    attr_reader :menu

    def initialize(menu)
      @menu = menu
    end

    def day_name
      @menu.date.strftime('%A')
    end
  end
end
