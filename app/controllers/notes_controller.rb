class NotesController < ApplicationController
  def index
    @notes = Note.all
  end

  def create
    @note = Note.new(subject: params[:note][:subject], body: params[:note][:body])
    if @note.save
      redirect_to notes_url
    else
      render :new
    end
  end

  def new
    @note = Note.new
  end

  def new_js
    @note = Note.new
  end

  def new_js_inj
    @note = Note.new
  end

  def edit
    @note = Note.find_by(id: params[:id])
  end

  def show
    @note = Note.find(params[:id])
  end

  def update
    note = Note.find(params[:id])
    note.update(subject: params[:note][:subject], body: params[:note][:body])
    redirect_to(notes_url)
  end

  def destroy
    Note.find(params[:id]).destroy
    redirect_to(notes_url)
  end
end
