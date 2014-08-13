require 'rspec'
require 'task'

describe :task do
  before do
    Task.clear
  end

  it 'is initialized with a description' do
    test_task = Task.new('scrub the zebra')
    expect(test_task).to be_an_instance_of(Task)
  end

  it 'lets you read the description out' do
    test_task = Task.new('scrub the zebra')
    expect(test_task.description).to eq('scrub the zebra')
  end

  describe '.all' do
    it 'is empty at first' do
      expect(Task.all).to eq([])
    end

    it 'gets added to when save is called on an instance' do
      test_task = Task.new('scrub the zebra')
      test_task.save
      expect(Task.all).to eq([test_task])
    end
  end

  describe '.clear' do
    it 'empties out all the saved tasks' do
      Task.new('scrub the zebra').save
      Task.clear
      expect(Task.all).to eq([])
    end
  end
end
