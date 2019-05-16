require 'notebook'

describe Notebook do
  it 'can initialize a notebook object' do
    my_notebook = Notebook.new

    expect(my_notebook).to be_a_kind_of(Notebook)
  end
end
