class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question_asked = params[:questions]
    if @question_asked == 'I am going to work'
      @answer_coach = 'Great!'
    elsif @question_asked.split('').last == '?'
      @answer_coach = 'Silly question; get dressed and go to work!'
    else
      @answer_coach = "I don't care, get dressed and go to work!"
    end
  end
end
