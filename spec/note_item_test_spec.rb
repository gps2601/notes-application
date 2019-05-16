require 'support/shared_examples_for_note_item'
require 'note_item'

class NoteItemTest
  include NoteItem

  def initialize(title, body)
    @title = title
    @body = body
  end
end

describe NoteItemTest do
  it_behaves_like NoteItem
end
