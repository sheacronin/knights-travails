# frozen_string_literal: true

require_relative '../lib/board'
require_relative '../lib/knight'

board = Board.new
knight = Knight.new(board)
puts knight.adjacencies
