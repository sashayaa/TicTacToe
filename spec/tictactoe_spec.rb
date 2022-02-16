require 'rspec'
require './tictactoe'

describe TicTacToe do
    tictactoe = described_class.new

    it "outputs an empty board" do

    # Act
    position = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
    expected_board = [" #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  "-----------",  " #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  "-----------", " #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]

    result = tictactoe.display_board()

    # Assert
    expect(result).to eq(expected_board)

    end

    it "outputs first turn" do

        # Act
        position = [["X", " ", " "], [" ", " ", " "], [" ", " ", " "]]
        expected_board = [" #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  "-----------",  " #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  "-----------", " #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]

        tictactoe.update_positions(0, 0, "X")

        result = tictactoe.display_board()
    
        # Assert
        expect(result).to eq(expected_board)
    
    end

    it "outputs first turn" do

        # Act
        position = [["X", "O", " "], [" ", " ", " "], [" ", " ", " "]]
        expected_board = [" #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  "-----------",  " #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  "-----------", " #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]

        tictactoe.update_positions(0, 0, "X")
        tictactoe.update_positions(0, 1, "O")

        result = tictactoe.display_board()
    
        # Assert
        expect(result).to eq(expected_board)
    
    end
end