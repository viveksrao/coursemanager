class NotesController < ApplicationController
  def create
    @topic = Topic.find(params[:topic_id])
    @note = @topic.notes.build(note_params)
    if @note.save
      redirect_to @topic, notice: "Note Added."
    else
      redirect_to @topic, alert: "Note Not Added."
    end
  end

  private

  def note_params
    params.require(:note).permit(:name, :email, :body)
  end
end
