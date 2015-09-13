class LessonsController < ApplicationController
  def index
    @lessons = Lesson.all
  end

  def show
    @lesson = Lesson.find(params[:id])
    @body = Redcarpet::Markdown.new(Redcarpet::Render::HTML).render(@lesson.body)
  end
end
