RSpec.describe 'raise_error matcher' do
  def some_method
    x
  end

  it 'can check for a specific error being raised' do
    expect { some_method }.to raise_error(NameError)
    expect { 10 / 0 }.to raise_error(ZeroDivisionError)
  end

  it 'can check for user-created error' do
    class CustomError < StandardError; end
    expect { raise CustomError }.to raise_error(CustomError)
  end
end