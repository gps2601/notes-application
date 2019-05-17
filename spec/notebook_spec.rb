require 'notebook'

describe Notebook do
  let(:my_notebook) { Notebook.new }

  describe '#initialization' do
    it 'can initialize a notebook object' do
      expect(my_notebook).to be_a_kind_of(Notebook)
    end
  end

  describe '#add' do
    it 'can respond to' do
      expect(my_notebook).to respond_to(:add)
    end

    it 'can respond when passed an argument' do
      expect(my_notebook).to respond_to(:add).with(1).argument
    end

    it 'stores the note passed to it' do
      note = double
      my_notebook.add(note)
      notes = my_notebook.notes
      expect(notes).to include(note)
    end
  end

  describe '#view_note_titles' do
    it 'can respond to' do
      expect(my_notebook).to respond_to(:view_titles)
    end

    it 'can display the title of a note' do
      note = double("note", :title => "My lovely note")
      my_notebook.add(note)

      title = my_notebook.view_titles

      expect(title).to include("My lovely note")
    end

    it 'can display the title of multiple notes' do
      note_1 = double("note 1", :title => "A note")
      note_2 = double("note 2", :title => "Another note")
      my_notebook.add(note_1)
      my_notebook.add(note_2)

      titles = my_notebook.view_titles

      expect(titles).to include("A note", "Another note")
    end

    it 'can display a message to notify if there are no notes' do
      allow(my_notebook).to receive(:notes).and_return([])
      puts my_notebook.notes
      titles = my_notebook.view_titles

      expect(titles).to eq("There are no notes stored!")
    end
  end

  describe '#select_note_by_title' do
    it 'can respond to select_note_by_title' do
      expect(my_notebook).to respond_to(:select_note_by_title)
    end

    it 'can accept an argument' do
      expect(my_notebook).to respond_to(:select_note_by_title).with(1).argument
    end

    it 'raises error if argument is not a string' do
      expect { my_notebook.select_note_by_title(1) }.to raise_error "Title must be string"
    end

    it 'displays the title and body of a note if found' do
      note_1 = double("Nice note", :title => "I'm really nice", :body => "body")
      note_2 = double("Mean note", :title => "I'm really not nice", :body => "groove")
      my_notebook.add(note_1)
      my_notebook.add(note_2)

      note_title_and_body = my_notebook.select_note_by_title("I'm really nice")

      # Is it okay to use format here to make the test decoupled from the format implementation?
      expect(note_title_and_body).to eq(my_notebook.format(note_1))
    end

    it 'returns a message if note is not found' do
      note_1 = double("Nice note", :title => "I'm really nice", :body => "body")
      note_2 = double("Mean note", :title => "I'm really not nice", :body => "groove")
      my_notebook.add(note_1)
      my_notebook.add(note_2)

      note_title_and_body = my_notebook.select_note_by_title("An okayish note")

      expect(note_title_and_body).to eq("No note found!")
    end
  end
end
