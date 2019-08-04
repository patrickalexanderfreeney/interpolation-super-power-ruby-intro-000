describe '#display_rainbow' do
  it 'accepts one argument' do
    colors = ['R: red', 'O: orange', 'Y: yellow', 'G: green', 'B: blue', 'I: indigo', 'V: violet']

    allow(self).to receive(:puts)

    expect { display_rainbow(colors) }.to_not raise_error(NoMethodError)
    expect { display_rainbow(colors) }.to_not raise_error(ArgumentError)
  end

  it 'prints out the colors of the rainbow correctly when passed in in order' do
    colors = ['R: red', 'O: orange', 'Y: yellow', 'G: green', 'B: blue', 'I: indigo', 'V: violet']

    expect(colors).to receive(:[]).with(0).at_least(:once).and_return("R: red")
    expect(colors).to receive(:[]).with(1).at_least(:once).and_return("O: orange")
    expect(colors).to receive(:[]).with(2).at_least(:once).and_return("Y: yellow")
    expect(colors).to receive(:[]).with(3).at_least(:once).and_return("G: green")
    expect(colors).to receive(:[]).with(4).at_least(:once).and_return("B: blue")
    expect(colors).to receive(:[]).with(5).at_least(:once).and_return("I: indigo")
    expect(colors).to receive(:[]).with(6).at_least(:once).and_return("v: violet")

    expect { display_rainbow(colors) }.to output("R: red, O: orange, Y: yellow, G: green, B: blue, I: indigo, V: violet\n").to_stdout
  end
end
