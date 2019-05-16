require 'note_item'

shared_examples_for NoteItem do
  it 'has a title' do
    my_note = NoteItemTest.new("title", "body")
    expect(my_note).to respond_to(:title)
  end

  it 'has a body' do
    my_note = NoteItemTest.new("title", "body")
    expect(my_note).to respond_to(:body)
  end
end
