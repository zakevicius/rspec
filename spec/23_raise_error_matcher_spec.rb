# frozen_string_literal: true

RSpec.describe 'raise_error matcher' do
  def some_method
    x
  end

  it 'can check for a specific error being raised' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  let(:custom_error) { Class.new(StandardError) }

  it 'can check for user-created error' do
    expect { raise custom_error }.to raise_error(custom_error)
  end
end
