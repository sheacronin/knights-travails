# frozen_string_literal: true

require_relative '../lib/board'
require_relative '../lib/knight'

board = Board.new
knight = Knight.new(board)

knight.moves([3, 3], [4, 3])
