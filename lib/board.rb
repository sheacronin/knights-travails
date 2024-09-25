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
      row = i % (size - 1)
      if i < size
        row = i
      elsif (i % (size - 1)).zero?
        row = size - 1
      end

      col = (i / size).floor

      [row, col]
    end
  end
end
