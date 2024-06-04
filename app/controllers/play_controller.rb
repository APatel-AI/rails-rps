class PlayController <ApplicationController
  def home
   
    render({:template => "game_templates/home"})

  end
  def play_rock
    @random_move = ["rock", "paper", "scissors"].sample
    @result = ""
    if @random_move == "paper"
      @result = "We lost"
    elsif @random_move == "rock"
      @result = "We tied"
    else
      @result = "We won"
    end
    render({:template => "game_templates/play_rock"})

  end



  def play_paper
    @random_move = ["rock", "paper", "scissors"].sample
    @result = ""

    if @random_move == "paper"
      @result = "We tied"
    elsif @random_move == "scissors"
      @result = "We lost"
    else
      @result = "We won"
    end
    render({:template => "game_templates/play_paper"})
  end


  def play_scissors
    @random_move = ["rock", "paper", "scissors"].sample

    @result = ""

    if @random_move == "paper"
      @result = "We won"
    elsif @random_move == "scissors"
      @result = "We tied"
    else
      @result = "We lost"
    end
    render({:template => "game_templates/play_scissors"})

  end


end
