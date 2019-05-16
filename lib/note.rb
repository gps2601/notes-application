class Note
  include NoteItem

  def initialize(title, body)
    @title = title
    @body = body
  end
end
