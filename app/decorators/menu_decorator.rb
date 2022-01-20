# frozen_string_literal: true

class MenuDecorator < ApplicationDecorator
  delegate_all

  def day_name
    object.date.strftime('%A')
  end

  def human_date
    object.date.strftime('%m.%d.%Y')
  end
end
