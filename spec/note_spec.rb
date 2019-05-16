require 'note'

describe Note do
  let(:my_note) { Note.new('title', 'body') }
  it 'can instantiate' do
    expect(my_note).to be_kind_of(Note)
  end

  it 'has a title' do
    expect(my_note).to respond_to(:title)
  end

  it 'can return a title' do
    expect(my_note.title).to eq('title')
  end

  it 'has a body' do
    expect(my_note).to respond_to(:body)
  end

  it 'can return a body' do
    expect(my_note.body).to eq('body')
  end
end
