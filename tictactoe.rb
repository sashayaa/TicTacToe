class TicTacToe
    attr_accessor :board, :position

    def initialize()
        @position = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
        @board = [" #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  "-----------",  " #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  "-----------", " #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]
    end    

    def display_board()
        @board
    end

    def gaming_board
end