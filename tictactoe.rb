class TicTacToe
    attr_accessor :position

    def initialize()
        @position = [[" ", " ", " "], [" ", " ", " "], [" ", " ", " "]]
    end    

    def display_board()
        board = [" #{position[0][0]} | #{position[0][1]} | #{position[0][2]} ",  "-----------",  " #{position[1][0]} | #{position[1][1]} | #{position[1][2]} ",  "-----------", " #{position[2][0]} | #{position[2][1]} | #{position[2][2]} "]
    end

    def update_gaming_board()
    end
end