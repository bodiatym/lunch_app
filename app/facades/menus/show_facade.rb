# frozen_string_literal: true

module Menus
  class ShowFacade
    attr_reader :menu

    delegate :day_name, to: :menu, prefix: :menu

    def initialize(menu)
      @menu = menu.decorate
    end
  end
end
