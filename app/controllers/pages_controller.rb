class PagesController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @answer = coach_answer(@question)
  end

  def coach_answer(*)
    if @question.downcase == 'i am going to work right now!'
      ''
    elsif @question.end_with?('?')
      'Silly question, get dressed and go to work!'
    elsif @question.upcase == @question
      "I can feel your motivation! #{@question}"
    else
      'I do not care, get dressed and go to work!'
    end
  end
end
