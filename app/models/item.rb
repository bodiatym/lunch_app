# frozen_string_literal: true

class Item < ApplicationRecord
  enum course: {
    first: FIRST = 'first',
    main: MAIN = 'main',
    drink: DRINK = 'drink'
  }, _suffix: true
end
