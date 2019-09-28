class Rock_Paper_Scissors
    
    @@user_score = 0
    @@computer_score = 0
    @@ties = 0
    
    def initialize
        puts "Welcome to Rock, Paper, Scissors! If you would like to play, please type 'play'!"
        input = gets.chomp
            if input == "play" 
                play_round
            else initialize
            end
        end

    def get_user_input 
        @@user_input = gets.chomp.downcase
    end

    def get_computer_input
        @@computer_input = ["rock", "paper", "scissors"].sample
    end

     def play_round
        @@win = false
        while @@win == false  
            
            if @@user_score == 5 
                @@win = true
                puts "Congratulations! You won! You beat the machine!"
                exit 
            end

            if @@computer_score == 5
                @@win = true
                puts "The machine has proven its inherent superiority, and beaten you.  Better luck next time!"
                exit
            end

            puts  "What is your selection: Rock, Paper, or Scissors?"
            get_user_input
            puts "Great! Your selection is #{@@user_input}!"
            get_computer_input
            puts "The computer chose #{@@computer_input}."

            usr_win_round = "You beat the machine this round..."
            score = "USER SCORE: #{@@user_score}.  COMPUTER SCORE: #{@@computer_score}.".rjust(400)
            
            if @@user_input == @@computer_input
                puts "Tie!"
                @@ties += 1
                puts score
            elsif @@user_input == "rock" && @@computer_input == "scissors"
                puts usr_win_round
                @@user_score += 1
                puts score
            elsif @@user_input == "paper" && @@computer_input == "rock"
                puts usr_win_round
                @@user_score += 1
                puts score
            elsif @@user_input == "scissors" && @@computer_input == "paper"
                puts usr_win_round
                @@user_score += 1
                puts score
            else
                puts "The machine is victorious this round..."
                @@computer_score += 1
                puts score
            end
        end
    end
end


rps = Rock_Paper_Scissors.new

