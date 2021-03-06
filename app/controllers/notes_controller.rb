class NotesController < ApplicationController

  def index
    @notes = Note.all
  end

  def show
    @note = Note.find(params[:id])
  end

  def new
  end

  def create
    @note = Note.new(note_params)

    @note.save
    redirect_to @note
  end

  private

  def note_params
    params.require(:note).permit(:title, :text)
  end
end
