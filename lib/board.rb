# frozen_string_literal: true

# Chess board holding array of squares
class Board
  attr_reader :size, :squares

  def initialize(size = 8)
    @size = 8
    @squares = build_board(size)
  end

  private

  def build_board(size)
    Array.new(size * size) do |i|
      row = i >= size ? i % size : i
      col = (i / size).floor
      [row, col]
    end
  end
end
