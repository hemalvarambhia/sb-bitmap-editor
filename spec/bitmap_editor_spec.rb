describe 'I 1 1' do
  class BitmapEditor
    def initialize(image)
      @image = image
    end

    def run(command)
      @image.generate(width: 1, height: 1)
    end
  end

  it 'generates a 1 x 1 pixel image painted white' do
    image = double(:image)
    expect(image).to receive(:generate).with(width: 1, height: 1)

    BitmapEditor.new(image).run('I 1 1')
  end
end
