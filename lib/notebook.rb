class Notebook
  attr_reader :notes

  def initialize
    @notes = []
  end

  def add_note(note)
    notes.push(note)
  end
end
