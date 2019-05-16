require 'notebook'

describe Notebook do
  let(:my_notebook) { Notebook.new }

  it 'can initialize a notebook object' do
    expect(my_notebook).to be_a_kind_of(Notebook)
  end

  it 'can respond to add note' do
    expect(my_notebook).to respond_to(:add_note)
  end
end
