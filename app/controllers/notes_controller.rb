class NotesController < ApplicationController
  before_action :select_note, :only [:show, :edit, :update, :destroy]

  def index
    @notes = Note.all
    @note = Note.new
  end

  def show
  end

  def new
    @note = Note.new
  end

  def create
    @note = Note.new(note_params)
    if @note.save
      redirect_to notes_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @note.update(note_params)
      redirect_to note_path(@note)
    else
      render :edit
    end
  end

  def destroy
    @note.destroy
    redirect_to notes_path
  end

  private

  def note_params
    params.require(:note).permit(:name, :description)
  end

  def select_note
    @note = Note.find(params[:id])
  end
end
