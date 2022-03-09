require 'rspec'
require './tictactoe'

describe Tictactoe do

    it "outputs an empty board" do

        # Act
        tictactoe = described_class.new

        position = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
        # expected_board = [" #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  "-----------",  " #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  "-----------", " #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]
        expected_board = ["  1   2   3 ","1 #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  " -----------",  "2 #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  " -----------", "3 #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]
        puts ["  1   2   3 ", "1 #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  " -----------",  "2 #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  " -----------", "3 #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]
        result = tictactoe.display_board()

        # Assert
        expect(result).to eq(expected_board)

    end

    it "outputs board with an 'X' in the first turn at position [0][0]" do

        # Act
        tictactoe = described_class.new

        position = [["X", " ", " "], [" ", " ", " "], [" ", " ", " "]]
        expected_board = ["  1   2   3 ", "1 #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  " -----------",  "2 #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  " -----------", "3 #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]
        
        tictactoe.update_board(0,0,'X')
        result = tictactoe.display_board()

        # Assert
        expect(result).to eq(expected_board)
    
    end

    it "outputs board with an 'X' in the [0][1] position of board" do

        # Act
        tictactoe = described_class.new

        position = [[" ", "X", " "], [" ", " ", " "], [" ", " ", " "]]
        expected_board = ["  1   2   3 ", "1 #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  " -----------",  "2 #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  " -----------", "3 #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]
        
        tictactoe.update_board(0,1,'X')
        result = tictactoe.display_board()

        # Assert
        expect(result).to eq(expected_board)
    
    end

    it "outputs board with an 'X' and 'O' in separate positions" do

        # Act
        tictactoe = described_class.new
        
        position = [[" ", "X", " "], [" ", "O", " "], [" ", " ", " "]]
        expected_board = ["  1   2   3 ", "1 #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  " -----------",  "2 #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  " -----------", "3 #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]
        
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
        expected_board = ["  1   2   3 ", "1 #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  " -----------",  "2 #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  " -----------", "3 #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]

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


    it "checks turn function works for updating the board" do

        # Act
        tictactoe = described_class.new

        # Assert
        expect(tictactoe).to respond_to(:update_board)
    
    end 

    it "checks conversion of user row input to index" do

        # Act
        tictactoe = described_class.new
        
        puts "Testing for row input conversion to index"
        result = tictactoe.row_input_to_index()

        # Assert
        expect(result).to eq(0)
    
    end 

    it "checks game function" do

        # Act
        tictactoe = described_class.new

        # Assert
        expect(tictactoe).to respond_to(:game)
    
    end 

    it "checks if combination is not winning" do

        # Act
        tictactoe = described_class.new

        tictactoe.update_board(0,0,"X")
        tictactoe.update_board(0,1,"X")
        tictactoe.update_board(1,2,"X")

        # puts "           "
        # puts tictactoe.display_board

        result = tictactoe.win?
        expected_result = false

        # Assert
        expect(result).to eq(expected_result)
    
    end 

    it "checks if combination is winning" do

        # Act
        tictactoe = described_class.new

        tictactoe.update_board(0,0,"O")
        tictactoe.update_board(1,1,"O")
        tictactoe.update_board(2,2,"O")

        # puts "           "
        # puts tictactoe.display_board

        result = tictactoe.win?
        expected_result = true

        # Assert
        expect(result).to eq(expected_result)
    
    end

    # it "game ends with 'you won'" do

    #     # Act
    #     tictactoe = described_class.new

    #     tictactoe.game

    #     # puts "           "
    #     # puts tictactoe.display_board

    #     result = tictactoe.game

    #     # Assert
    #     expect(result).to eq("Congratulations!")
    
    # end


    # it "checks if row inputs are valid" do

    #     # Act
    #     tictactoe = described_class.new

    #     # Assert
    #     expect ( tictactoe.row_input_to_index() ).to output("Invalid input. Try again! ").to_stdout
    
    # end

    it "checks computer function" do

        # Act
        tictactoe = described_class.new

        # Assert
        expect(tictactoe).to respond_to(:computer_turn)
    
    end

    # it "checks computer function" do

    #     # Act
    #     tictactoe = described_class.new

    #     puts "computer turn function"

    #     tictactoe.game

    #     result = tictactoe.position
    #     expected_position = [["O", "X", "O"], ["X", "O", "X"], ["X", "O", "X"]]

    #     # Assert
    #     expect(result).to eq(expected_position)
    
    # end 

    it "checks who_won? function" do

        # Act
        tictactoe = described_class.new

        # Assert
        expect(tictactoe).to respond_to(:who_won?)
    
    end 

end