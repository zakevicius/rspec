# frozen_string_literal: true

class Person
  def speak
    sleep(3)
    'Hello'
  end
end

RSpec.describe Person do
  describe 'regular double' do
    it 'can implement any method' do
      person = double(speak: 'Hello', non_existing_method: 20)

      expect(person.speak).to eq('Hello')
      expect(person.non_existing_method).to eq(20)
    end
  end

  describe 'instance double'do
    it 'can only implement methods that are defined on the class' do
      person = instance_double(Person, speak: 'Hello')

      expect(person.speak).to eq('Hello')

      person = instance_double(Person)

      # This will fail: Wrong number of arguments. Expected 0, got 2.
      # allow(person).to receive(:speak).with(3, 10).and_return('Hello')
      # expect(person.speak(3, 10)).to eq('Hello')

      allow(person).to receive(:speak).with(no_args).and_return('Hello')

      expect(person.speak).to eq('Hello')

    end
  end
end
