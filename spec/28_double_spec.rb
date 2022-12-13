# frozen_string_literal: true

RSpec.describe 'a random double' do
  it 'only allows defined methods to be invoked' do
    # stuntman = double('Mr. Danger')
    #
    # stuntman.fall_off_ladder # This will raise Error

    stuntman = double('Mr. Danger', fall_off_ladder: 'Ouch', light_on_fire: true)

    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to be_truthy
  end

  it 'allows double to receive methods' do
    stuntman = double('Mr. Danger')

    allow(stuntman).to receive(:fall_off_ladder).and_return('Ouch')
    allow(stuntman).to receive(:light_on_fire).and_return(true)

    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to be_truthy
  end

  it 'allows double to receive multiple methods' do
    stuntman = double('Mr. Danger')

    allow(stuntman).to receive_messages(fall_off_ladder: 'Ouch', light_on_fire: true)

    expect(stuntman.fall_off_ladder).to eq('Ouch')
    expect(stuntman.light_on_fire).to be_truthy
  end
end
