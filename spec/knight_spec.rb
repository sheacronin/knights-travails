# frozen_string_literal: true

require 'spec_helper'
require_relative '../lib/knight'
require_relative '../lib/board'

describe 'moves' do
  it 'returns path with one move' do
    knight = Knight.new(Board.new)
    expect(knight.moves([0, 0], [2, 1])).to eq([[0, 0], [2, 1]])
  end

  it 'returns path with two moves' do
    knight = Knight.new(Board.new)
    expect(knight.moves([0, 0], [3, 3])).to eq([[0, 0], [1, 2], [3, 3]])
  end

  it 'works with longer path' do
    knight = Knight.new(Board.new)
    expect(knight.moves([0, 0], [7, 7])).to eq([[0, 0], [1, 2], [2, 4], [3, 6], [4, 4], [5, 6], [7, 7]])
  end
end
