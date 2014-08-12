require 'rspec'
require 'task'

describe :task do
  it 'is initialized with a description' do
    test_task = Task.new('scrub the zebra')
    expect(test_task).to be_an_instance_of(Task)
  end

  it 'lets you read the description out' do
    test_task = Task.new('scrub the zebra')
    expect(test_task.description).to eq('scrub the zebra')
  end
end
