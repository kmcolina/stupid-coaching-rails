class QuestionsController < ApplicationController

QUESTION_WORK = "I am going to work"
ANSWER_WORK = "Great!"
ANSWER_QUESTION = "Silly question, get dressed and go to work!"
ANSWER_ELSE = "I don't care, get dressed and go to work!"

  def ask
  end
  def answer
    @question = params[:question]
    @answer = stupid_coach(@question)
  end

  def stupid_coach(question)
    if is_question?(question)
      "Silly question, get dressed and go to work!"
    elsif question === "I am going to work"
      "Great!"
    else
      "I don't care, get dressed and go to work!"
    end
    # is_question?(question) ? "Silly question, get dressed and go to work!" : ((question === "I am going to work") ? "Great!" : "I don't care, get dressed and go to work!")
  end

  def is_question?(question)
    (question === nil) ? false : question.end_with?("?")
  end
end
