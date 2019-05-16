class Notebook
  attr_reader :notes

  def initialize
    @notes = []
  end

  def add(note)
    notes.push(note)
  end

  def view_titles
    return "There are no notes stored!" if notes.empty?
    notes.map { |note| note.title }
  end

  def select_note_by_title(title)
    raise "Title must be string" unless title.instance_of? String

    note = notes.find { |note| note.title == title }

    return "Not note found!" if note.nil?

    format(note)
  end

  def format(note)
    "Title: #{note.title}\nBody: #{note.body}"
  end
end
