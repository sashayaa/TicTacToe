require 'rspec'
require './tictactoe'

describe TicTacToe do
    tictactoe = described_class.new

    it "outputs an empty board" do

    # Arrange
    # tictactoe = described_class.new

    # Act
    position = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
    expected_board = [" #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  "-----------",  " #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  "-----------", " #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]

    result = tictactoe.display_board()

    # Assert
    expect(result).to eq(expected_board)

    end

    # it "outputs an empty board" do

    #     # Arrange
    #     # tictactoe = described_class.new
    
    #     # Act
    #     position = [["X", " ", " "], [" ", " ", " "], [" ", " ", " "]]
    #     expected_board = [" #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  "-----------",  " #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  "-----------", " #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]
    
    #     puts result = tictactoe.display_board()
    
    #     # Assert
    #     expect(result).to eq(expected_board)
    
    #     end
end