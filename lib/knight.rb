# frozen_string_literal: true

# Knight piece that can move 1 square x 2 squares in any direction
class Knight
  attr_reader :adjacencies

  def initialize(board)
    @board = board
    @adjacencies = build_adjacencies(board)
  end

  def moves(start, goal)
    previous_positions = get_paths(start, goal)
    position = goal
    path = []
    until path.first == start
      path.unshift(position)
      position = previous_positions[position]
    end
    path
  end

  private

  def get_paths(start, goal)
    previous_positions = {}
    queue = [start]
    visited = []
    until previous_positions.include?(goal)
      position = queue.shift
      adjacencies[position].reject { |square| visited.include?(square) }.each do |square|
        visited << square
        previous_positions[square] = position
        queue << square
      end
    end
    previous_positions
  end

  def moves_from(square)
    row, col = square
    [
      [row + 1, col + 2],
      [row + 1, col - 2],
      [row - 1, col + 2],
      [row - 1, col - 2],
      [row + 2, col + 1],
      [row + 2, col - 1],
      [row - 2, col + 1],
      [row - 2, col - 1]
    ].select do |move|
      move.all? { |i| i >= 0 && i < @board.size }
    end
  end

  def build_adjacencies(board)
    adjacencies = {}
    board.squares.each do |square|
      adjacencies[square] = moves_from(square)
    end
    adjacencies
  end
end
