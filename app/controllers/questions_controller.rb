class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question] == 'I am going to work right now!'
      params[:answer] = 'Exactly!'
    elsif params[:question].include?('?')
      params[:answer] = 'Silly question, get dressed and go to work!'
    else
      params[:answer] = 'I dont care, get dressed and go to work!'
    end
  end
end
