require 'notebook'

describe Notebook do
  let(:my_notebook) { Notebook.new }

  describe 'initialization' do
    it 'can initialize a notebook object' do
      expect(my_notebook).to be_a_kind_of(Notebook)
    end
  end

  describe '.add_note' do
    it 'can respond to' do
      expect(my_notebook).to respond_to(:add_note)
    end

    it 'can respond when passed an argument' do
      expect(my_notebook).to respond_to(:add_note).with(1).argument
    end

    it 'stores the note passed to it' do
      note = double
      my_notebook.add_note(note)
      notes = my_notebook.notes
      expect(notes).to include(note)
    end
  end
end
