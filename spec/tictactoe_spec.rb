require 'rspec'
require './tictactoe'

describe TicTacToe do

    it "outputs an empty board" do

        # Act
        tictactoe = described_class.new

        position = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
        expected_board = [" #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  "-----------",  " #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  "-----------", " #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]
        result = tictactoe.display_board()

        # Assert
        expect(result).to eq(expected_board)

    end

    it "outputs board with an 'X' in the first turn at position [0][0]" do

        # Act
        tictactoe = described_class.new

        position = [["X", " ", " "], [" ", " ", " "], [" ", " ", " "]]
        expected_board = [" #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  "-----------",  " #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  "-----------", " #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]
        
        tictactoe.update_board(0,0,'X')
        result = tictactoe.display_board()

        # Assert
        expect(result).to eq(expected_board)
    
    end

    it "outputs board with an 'X' in the [0][1] position of board" do

        # Act
        tictactoe = described_class.new

        position = [[" ", "X", " "], [" ", " ", " "], [" ", " ", " "]]
        expected_board = [" #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  "-----------",  " #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  "-----------", " #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]
        
        tictactoe.update_board(0,1,'X')
        result = tictactoe.display_board()

        # Assert
        expect(result).to eq(expected_board)
    
    end

    it "outputs board with an 'X' and 'O' in separate positions" do

        # Act
        tictactoe = described_class.new
        
        position = [[" ", "X", " "], [" ", "O", " "], [" ", " ", " "]]
        expected_board = [" #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  "-----------",  " #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  "-----------", " #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]
        
        tictactoe.update_board(0,1,'X')
        tictactoe.update_board(1,1,'O')
            

        result = tictactoe.display_board()

        # Assert
        expect(result).to eq(expected_board)
    
    end

    it "checks if position is empty" do

        # Act
        tictactoe = described_class.new
        
        position = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
        expected_board = [" #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  "-----------",  " #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  "-----------", " #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]

        result = tictactoe.is_empty?(1,1)

        # Assert
        expect(result).to eq(true)
    
    end

    it "checks if position is full" do

        # Act
        tictactoe = described_class.new
        
        tictactoe.update_board(1,1,'X')

        result = tictactoe.is_empty?(1,1)

        # Assert
        expect(result).to eq(false)
    
    end


    # it "checks turn function works for updating the board" do

    #     # Act
    #     tictactoe = described_class.new

    #     puts "test1"
    #     tictactoe.turn('X')

    #     result = tictactoe.position

    #     position = [["X", "O", "X"], ["O", "X", "O"], ["X", "O", "X"]]

    #     # Assert
    #     expect(result).to eq(position)
    
    # end 

    # it "checks conversion of user input to index" do

    #     # Act
    #     tictactoe = described_class.new

    #     result = tictactoe.user_input_to_index
    #     expected_result = [0, 0]

    #     # Assert
    #     expect(result).to eq(expected_result)
    
    # end 

    it "checks game function" do

        # Act
        tictactoe = described_class.new

        puts "Game func. test"
        tictactoe.game

        result = tictactoe.position
        position = [["X", "O", "X"], ["O", "X", "O"], ["X", "O", "X"]]

        # Assert
        expect(result).to eq(position)
    
    end 

end