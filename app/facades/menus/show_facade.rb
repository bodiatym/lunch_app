# frozen_string_literal: true

module Menus
  class ShowFacade
    attr_reader :menu

    delegate :day_name, :meals, to: :menu, prefix: :menu

    def initialize(menu)
      @menu = menu.decorate
    end

    def first_course
      menu_meals.joins(:item).where(item: { course: ::Item::FIRST }).order(:price).decorate
    end

    def main_course
      menu_meals.joins(:item).where(item: { course: ::Item::MAIN }).order(:price).decorate
    end

    def drinks
      menu_meals.joins(:item).where(item: { course: ::Item::DRINK }).order(:price).decorate
    end
  end
end
