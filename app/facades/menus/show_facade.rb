# frozen_string_literal: true

module Menus
  class ShowFacade
    attr_reader :menu

    def initialize(menu)
      @menu = menu.decorate
    end
  end
end
