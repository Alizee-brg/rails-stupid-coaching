# frozen_string_literal: true

class QuestionsController < ApplicationController
  def asks; end

  def answer
    @coach = ''
    @question = params[:question]
    @coach = if @question.include?('work')
               'Great!'
             elsif @question.end_with?('?')
               'Silly question, get dressed and go to work!'
             else
               "I don't care, get dressed and go to work!"
             end
  end
end
