# frozen_string_literal: true

module Menus
  class IndexFacade

    def menus
      @menus = Menu.where('date <= ?', Date.current)
    end
  end
end
