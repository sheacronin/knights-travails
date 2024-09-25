# frozen_string_literal: true

require_relative '../lib/board'
require_relative '../lib/knight'

knight = Knight.new(Board.new)
knight.moves([3, 3], [4, 3])
